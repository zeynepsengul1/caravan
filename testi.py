import json
import logging
import openai
import requests

# Configure logging
logging.basicConfig(level=logging.ERROR)

# Configure OpenAI API key
openai.api_key = 'sk-proj-XKjdljYLqjjfxvZErcJVT3BlbkFJVYCR2J5ndfPxqcpltJCg'


def extract_address_from_openai_response(response):
    # Implement logic to extract destination address from OpenAI response
    for choice in response.choices:
        breakpoint()
        if 'message' in choice and 'content' in choice.message:
            return choice.message['content'].strip()
    return ''  # Return empty string if no destination address found


def get_route(user_preference, address):

    # Convert coordinates to address using Google Geocoding API
    google_maps_api_key = 'AIzaSyBdj3YegSVEUImmkWeD1b24MqyYYdAH5qE'
    geocode_url = f"https://maps.googleapis.com/maps/api/geocode/json?latlng={address}&key={google_maps_api_key}"
    try:
        geocode_response = requests.get(geocode_url)
        geocode_data = geocode_response.json()

        if geocode_data['status'] == 'OK':
            starting_address = geocode_data['results'][0]['formatted_address']
        else:
            return {'error': 'Could not get address from coordinates'}

        # OpenAI API call to generate suggested route including destination
        response = openai.chat.completions.create(
            model="gpt-3.5-turbo-0125",
            messages=[
                {"role": "system", "content": "You are a helpful assistant designed to provide just the target camping address as json based on the given starting address and inputs."},
                {"role": "user", "content": f"User wants a camping experience: {user_preference}. Start from: {starting_address}. Suggest an address only as target camping area."}
            ]
        )
        content_dict = json.loads(response.choices[0].message.content)
        # Extracting destination address from OpenAI response
        #destination = extract_address_from_openai_response(response)
        target_camping_address = content_dict.get('target_camping_address', '')

        return {'destination': target_camping_address}

    except Exception as e:
        return {'error': str(e)}


# Test the function
if __name__ == "__main__":
    user_preference = "A peaceful camping experience with beautiful nature and hiking trails."
    address = "40.748817,-73.985428"  # Example coordinates for testing

    result = get_route(user_preference, address)
    print(result)
