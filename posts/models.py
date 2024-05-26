from django.db import models
from django.utils import timezone


class Post(models.Model):
    class PostObjects(models.Manager):
        def get_queryset(self):
            return super().get_queryset().filter(is_public=True)

    title = models.CharField(max_length=150, unique=True)
    slug = models.SlugField(max_length=150, unique=True, allow_unicode=True)
    author = models.ForeignKey(
        'users.User', on_delete=models.CASCADE, related_name='posts')
    thumbnail = models.ImageField(upload_to='thumbnails', default='thumbnails/default.jpg')
    description = models.TextField()
    read_time = models.IntegerField(null=True, blank=True)
    tags = models.ManyToManyField('posts.Tag')
    created_at = models.DateTimeField(auto_now_add=True)
    edited_at = models.DateTimeField(auto_now=True)
    is_public = models.BooleanField(default=False)
    rental_start = models.DateTimeField(default=timezone.now)
    rental_end = models.DateTimeField(default=timezone.now)
    price = models.IntegerField(default=0)
    available = models.BooleanField(default=True)
    objects = models.Manager()  # The default manager.
    public_objects = PostObjects()  # Custom manager for public objects.

    class Meta:
        ordering = ['-created_at']

    def __str__(self):
        return f'{self.id}. {self.title} - {self.author}'


class Tag(models.Model):
    name = models.CharField(max_length=20, unique=True)

    class Meta:
        ordering = ['name']

    def __str__(self):
        return f'{self.id}. {self.name}'
