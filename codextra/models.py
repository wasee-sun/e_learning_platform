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
    
class Student(User):
    level = models.IntegerField(default=0)

    def __str__(self):
        return f"{self.f_name} {self.l_name}"

class Instructor(User):
    bank_account = models.IntegerField()
    routing_no = models.IntegerField()

    def __str__(self):
        return f"{self.f_name} {self.l_name}"
    
class Category(models.Model):
    cat_id = models.AutoField(primary_key=True)
    cat_name = models.CharField(max_length=100)
    
    def __str__(self):
        return self.cat_name
    
class Course(models.Model):
    DIFFICULTY = [
        ('beginner', 'Beginner'),
        ('intermediate', 'Intermediate'),
        ('advanced', 'Advanced'),
    ]
    
    course_id = models.AutoField(primary_key=True)
    course_name = models.CharField(max_length=100)
    difficulty = models.CharField(
        max_length=15,
        choices=DIFFICULTY,
        default='beginner',
    )
    price = models.FloatField(default=0.00)
    description = models.CharField(max_length=500)
    inst_user_name = models.ForeignKey(Instructor, on_delete=models.CASCADE)
    cat_id = models.ForeignKey(Category, on_delete=models.CASCADE)
    
    def __str__(self):
        return self.course_name
    
# class course_material(models.Model):
#     TYPE = [
#         ('pdf', 'PDF'),
#         ('video', 'Video'),
#     ]
    
#     course_id = models.ForeignKey(Course, on_delete=models.CASCADE)
#     material_type = models.CharField(
#         max_length=5,
#         choices=TYPE,
#         default='pdf',
#     )
#     file_loc = models.
    
#     def __str__(self):
#         return self.material_name

class Cart(models.Model):
    s_user_name = models.ForeignKey(Student, on_delete=models.CASCADE)
    order_id = models.AutoField(primary_key=True)