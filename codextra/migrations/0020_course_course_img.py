# Generated by Django 5.1 on 2024-09-18 15:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("codextra", "0019_coursematerial_delete_course_material_and_more"),
    ]

    operations = [
        migrations.AddField(
            model_name="course",
            name="course_img",
            field=models.ImageField(blank=True, null=True, upload_to="course_images/"),
        ),
    ]
