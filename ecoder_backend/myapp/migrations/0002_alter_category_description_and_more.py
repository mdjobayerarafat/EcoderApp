# Generated by Django 5.0.7 on 2024-07-31 12:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='category',
            name='description',
            field=models.URLField(),
        ),
        migrations.AlterField(
            model_name='subcategory',
            name='description',
            field=models.URLField(),
        ),
    ]