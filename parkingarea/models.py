from django.db import models


class ParkingArea(models.Model):
    class ParkingAreaObjects(models.Manager):
        def get_queryset(self):
            return super().get_queryset().filter(is_public=True)

    title = models.CharField(max_length=150, unique=True)
    slug = models.SlugField(max_length=150, unique=True, allow_unicode=True)
    author = models.ForeignKey(
        'users.User', on_delete=models.RESTRICT, related_name='parking_areas')
    thumbnail = models.ImageField(upload_to='thumbnails', default='parkingareas/default.jpg')
    description = models.TextField()
    tags = models.ManyToManyField('parkingarea.Tag')
    created_at = models.DateTimeField(auto_now_add=True)
    edited_at = models.DateTimeField(auto_now=True)
    is_public = models.BooleanField(default=False)
    rental_start = models.DateTimeField()
    rental_end = models.DateTimeField()
    price = models.IntegerField()
    available = models.BooleanField()
    contact = models.TextField()
    address = models.TextField()
    objects = models.Manager()  # The default manager.
    public_objects = ParkingAreaObjects()  # Custom manager for public objects.

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


class Comment(models.Model):
    user = models.ForeignKey('users.User', on_delete=models.CASCADE)
    parking_area = models.ForeignKey(ParkingArea, on_delete=models.CASCADE, related_name='comments')
    text = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ['-created_at']

    def __str__(self):
        return f'{self.user.username} - {self.parking_area.title}'


