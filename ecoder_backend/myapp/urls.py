from django.urls import path
from . import views


urlpatterns = [
    path('videos/', views.VideoList.as_view()),
    path('videos/<int:pk>/', views.VideoDetail.as_view()),
    path('category/', views.Category.as_view()),
    path('subcategory/', views.Subcategory.as_view()),
    path('images/', views.Image.as_view()),

    path('category/<int:category_id>/', views.CategoryVideosView.as_view()),
]