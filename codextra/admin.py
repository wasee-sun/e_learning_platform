from django.contrib import admin
import codextra.models as models

# Register your models here.
admin.site.register(models.User)
admin.site.register(models.Student)
admin.site.register(models.Instructor)
admin.site.register(models.Category)
admin.site.register(models.Course)
admin.site.register(models.Cart)