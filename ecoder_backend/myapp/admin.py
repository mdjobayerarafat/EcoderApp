
from django.contrib import admin
from .models import Category, Subcategory, Video , Image

# Register your models here.
admin.site.register(Category)
admin.site.register(Subcategory)
admin.site.register(Video)
admin.site.register(Image)