# Generated by Django 5.1 on 2024-09-17 17:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("codextra", "0015_alter_course_material_file_loc"),
    ]

    operations = [
        migrations.AlterField(
            model_name="course_material",
            name="file_loc",
            field=models.FileField(upload_to="videos/"),
        ),
    ]
