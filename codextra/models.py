# Create your models here.
from django.db import models
from django.contrib.auth.hashers import make_password, check_password

class User(models.Model):
    username = models.CharField(max_length=150, unique=True, primary_key=True)
    password = models.CharField(max_length=128)  # Store hashed password
    f_name = models.CharField(max_length=50)
    l_name = models.CharField(max_length=50)
    email = models.EmailField(max_length=100)

    def set_password(self, raw_password):
        """Hash and set the user's password."""
        self.password = make_password(raw_password)

    def check_password(self, raw_password):
        """Verify if the provided password matches the stored hashed password."""
        return check_password(raw_password, self.password)

    def __str__(self):
        return f'{self.f_name} {self.l_name} ({self.username})'
    
