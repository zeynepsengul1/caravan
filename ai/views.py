import json
import logging

import openai
import requests
from django.http import JsonResponse
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.views import APIView

from ai.models import UserPreference
from ai.serializers import UserPreferenceSerializer


class UserPreferenceViewSet(APIView):
    queryset = UserPreference.objects.all()
    serializer_class = UserPreferenceSerializer

# Configure OpenAI API key

    @api_view(['POST'])
    def get_route(request):
        logging.info("istek geldi")
        logging.info(request)

        openai.api_key = 'sk-proj-XKjdljYLqjjfxvZErcJVT3BlbkFJVYCR2J5ndfPxqcpltJCg'

        user_preference = request.data.get('experience_description')
        address = request.data.get('starting_address')

        google_maps_api_key = 'AIzaSyBdj3YegSVEUImmkWeD1b24MqyYYdAH5qE'  # Google Maps API anahtarınızı burada kullanın
        geocode_url = f"https://maps.googleapis.com/maps/api/geocode/json?latlng={address}&key={google_maps_api_key}"

        try:
            geocode_response = requests.get(geocode_url)
            geocode_data = geocode_response.json()

            if geocode_data['status'] == 'OK':
                starting_address = geocode_data['results'][0]['formatted_address']
            else:
                return Response({'error': 'Koordinatlardan adres alınamadı'}, status=400)

            # OpenAI API çağrısı
            response = openai.chat.completions.create(
                model="gpt-3.5-turbo",
                messages=[
                    {"role": "system", "content": "Kamp adresi öneren yardımcı bir asistansınız."},
                    {"role": "user",
                     "content": f"Kullanıcı kamp deneyimi istiyor: {user_preference}. Başlangıç noktası: {starting_address}. Sadece hedef kamp alanı adresini önerin."}
                ]
            )

            content_dict = json.loads(response.choices[0].message.content)
            destination = content_dict.get('target_camping_address', '')

            route = {
                'starting_address': starting_address,
                'destination': destination,
            }
            return JsonResponse({'data': route})

        except Exception as e:
            return JsonResponse({'error': str(e)}, status=500)