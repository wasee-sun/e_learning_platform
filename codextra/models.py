from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class User(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    f_name = models.CharField(max_length=50, default='First name')
    l_name = models.CharField(max_length=50, default='Last name')
    email = models.EmailField(max_length=100, default='noreply@example.com')
    
    def __str__(self) -> str:
        return f"{self.user_name}"