import requests
import folium
from pprint import pprint
BASE_URL = "https://nominatim.openstreetmap.org/search?format=json"
postcode = '560078'
# r = requests.get(f"{BASE_URL}&postalcode={postcode}")

location = 12.90318476569343, 77.58588343649636
m = folium.Map(location=location, width=800, height=400)
m
