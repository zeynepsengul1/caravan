from django.urls import path

from posts.views import PostDetail, Posts, RentPost

urlpatterns = [
    path('', Posts.as_view()),
    path('<slug:slug>/', PostDetail.as_view()),
    path('<slug:slug>/rent', RentPost.as_view()),
]
