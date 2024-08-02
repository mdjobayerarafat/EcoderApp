from django.db import models


class Category(models.Model):
    name = models.CharField(max_length=255)
    description = models.URLField()

    def __str__(self):
        return self.name


class Subcategory(models.Model):
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    description = models.URLField()

    def __str__(self):
        return self.name


class Video(models.Model):
    title = models.CharField(max_length=255)
    rating = models.CharField(max_length=2)
    description = models.TextField()
    thumbnail = models.URLField()
    youtube_link = models.TextField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    subcategory = models.ForeignKey(Subcategory, on_delete=models.CASCADE)

    def __str__(self):
        return self.title


class Image(models.Model):
    image = models.URLField()

    def __str__(self):
        return self.image
