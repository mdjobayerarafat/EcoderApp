from rest_framework import serializers
from .models import Video, Category, Subcategory, Image


class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = ['id', 'name', 'description']

class SubcategorySerializer(serializers.ModelSerializer):
    category = CategorySerializer()

    class Meta:
        model = Subcategory
        fields = ['id', 'category', 'name', 'description']

class VideoSerializer(serializers.ModelSerializer):
    category = CategorySerializer()
    subcategory = SubcategorySerializer()

    class Meta:
        model = Video
        fields = ['id', 'title', 'rating', 'description', 'thumbnail', 'youtube_link', 'category', 'subcategory']


class ImageSerializer(serializers.ModelSerializer):
    image = serializers.ImageField()

    class Meta:
        model = Image
        fields = ['image']
