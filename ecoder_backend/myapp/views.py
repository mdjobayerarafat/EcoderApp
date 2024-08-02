import django_filters
from rest_framework import generics
from rest_framework.response import Response
from rest_framework.views import APIView

from .models import Video, Category, Subcategory, Image
from .serializers import VideoSerializer, CategorySerializer, SubcategorySerializer, ImageSerializer


class VideoFilter(django_filters.FilterSet):
    category_name = django_filters.CharFilter(field_name='category__name', lookup_expr='icontains')
    subcategory_name = django_filters.CharFilter(field_name='subcategory__name', lookup_expr='icontains')
    class Meta:
        model = Video
        fields = ['category_name', 'subcategory_name']





class VideoList(generics.ListCreateAPIView):
    queryset = Video.objects.all()
    serializer_class = VideoSerializer
    filter_backends = [django_filters.rest_framework.DjangoFilterBackend]
    filterset_class = VideoFilter



class VideoDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Video.objects.all()
    serializer_class = VideoSerializer


class Category(generics.ListCreateAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer


class Subcategory(generics.ListCreateAPIView):
    queryset = Subcategory.objects.all()
    serializer_class = SubcategorySerializer


class CategoryVideosView(APIView):
    def get(self, request, category_id):
        category = Category.objects.get(id=category_id)
        videos = Video.objects.filter(category=category)
        serializer = VideoSerializer(videos, many=True)
        return Response(serializer.data)

class Image(generics.ListCreateAPIView):
    queryset = Image.objects.all()
    serializer_class = ImageSerializer
