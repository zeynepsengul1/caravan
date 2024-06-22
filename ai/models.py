from django.db import models

class UserPreference(models.Model):
    user = models.ForeignKey('users.User', on_delete=models.CASCADE)
    experience_description = models.TextField()
    starting_address = models.TextField()

# Create your models here.
