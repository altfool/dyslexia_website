from django.db import models
from django.contrib.auth.models import User
from PIL import Image
from django.utils import timezone
from datetime import datetime, timedelta

def get_default_my_date():
    return timezone.localtime(timezone.now())


# Create your models here.

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    organization = models.CharField(null=True, max_length=100)
    purpose = models.CharField(null=True, max_length=100)
    image = models.ImageField(default='default.jpg', upload_to='profile_pics/')

    def __str__(self):
        return "{} Profile".format(self.user.username)

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)

        img = Image.open(self.image.path)
        if img.height > 300 or img.width > 300:
            output_size = (300, 300)
            img.thumbnail(output_size)
            img.save(self.image.path)

class Upload(models.Model):
    name = models.CharField(null=True, max_length=100)
    sample_age = models.IntegerField(null=True)
    size = models.IntegerField(null=True)
    date_uploaded = models.DateTimeField(default=get_default_my_date)
    brain_file = models.FileField(upload_to="brainData/")
    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    
    def __str__(self):
        return "{}: {}".format(self.owner.username, self.name)