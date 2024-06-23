from django.urls import path

from ai.views import UserPreferenceViewSet

urlpatterns = [
    path('get_route/', UserPreferenceViewSet.as_view()),
    ]