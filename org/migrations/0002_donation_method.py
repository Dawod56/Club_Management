# Generated by Django 3.1.1 on 2021-01-09 10:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('org', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='donation',
            name='method',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]
