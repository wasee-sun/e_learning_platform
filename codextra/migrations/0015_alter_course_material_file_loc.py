# Generated by Django 5.1 on 2024-09-14 23:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("codextra", "0014_alter_course_material_duration_and_more"),
    ]

    operations = [
        migrations.AlterField(
            model_name="course_material",
            name="file_loc",
            field=models.FileField(upload_to="media_files/"),
        ),
    ]
