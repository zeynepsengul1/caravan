from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from posts.views import PostDetail, Posts, RentPost

urlpatterns = [
    path('', Posts.as_view()),
    path('<slug:slug>/', PostDetail.as_view()),
    path('<slug:slug>/rent', RentPost.as_view()),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
