# Generated by Django 3.1.1 on 2021-01-11 14:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('org', '0006_designation'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='image',
            field=models.ImageField(blank=True, default='avatar.png', null=True, upload_to='users/%y.%m/'),
        ),
    ]
