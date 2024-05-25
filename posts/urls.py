from django.urls import path

from posts.views import PostDetail, PostsList ,RentPost

urlpatterns = [
    path('', PostsList.as_view()),
    path('<slug:slug>/', PostDetail.as_view()),
    path('<slug:slug>/rent', RentPost.as_view()),
]
