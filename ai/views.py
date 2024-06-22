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


# OpenAI entegrasyonu için yeni bir APIView


# Configure OpenAI API key
openai.api_key = 'sk-proj-XKjdljYLqjjfxvZErcJVT3BlbkFJVYCR2J5ndfPxqcpltJCg'

@api_view(['POST'])
def get_route(request):
    user_preference = request.data.get('experience_description')
    address = request.data.get('starting_address')
    logging.error(f"ahanda ruut: {user_preference}")
    # Convert coordinates to address using Google Geocoding API
    google_maps_api_key = 'AIzaSyBdj3YegSVEUImmkWeD1b24MqyYYdAH5qE'  # Replace with your actual Google Maps API key
    geocode_url = f"https://maps.googleapis.com/maps/api/geocode/json?latlng={address}&key={google_maps_api_key}"
    try:
        geocode_response = requests.get(geocode_url)
        geocode_data = geocode_response.json()

        if geocode_data['status'] == 'OK':
            starting_address = geocode_data['results'][0]['formatted_address']
        else:
            return Response({'error': 'Could not get address from coordinates'}, status=400)

        # OpenAI API call to generate suggested route including destination
        response = openai.chat.completions.create(
            model="gpt-3.5-turbo-0125",
            messages=[
                {"role": "system",
                 "content": "You are a helpful assistant designed to provide just the target camping address as json based on the given starting address and inputs."},
                {"role": "user",
                 "content": f"User wants a camping experience: {user_preference}. Start from: {starting_address}. Suggest an address only as target camping area."}
            ]
        )
        content_dict = json.loads(response.choices[0].message.content)
        # Extracting destination address from OpenAI response
        # destination = extract_address_from_openai_response(response)
        destination = content_dict.get('target_camping_address', '')


        # Extracting suggested route text and destination from OpenAI response

        # Prepare the route object to return
        route = {
            'starting_address': starting_address,
            'destination': destination,
        }
        logging.warning(route)
        return JsonResponse({'data': route})

    except Exception as e:
        return JsonResponse({'error': str(e)}, status=500)
