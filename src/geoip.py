import os
import geoip2.database
# from requests import get
import urllib.request

class GeoIp:
    def __init__(self):
        self.db_path = f"{os.path.dirname(os.path.realpath(__file__))}/GeoLite2-City.mmdb"
    @property
    def my_ip(self):
        if not hasattr(self, '_my_ip'):
            self._ip = self._get_my_ip()
        return self._ip
    
    @property
    def my_long(self):
        location = self.get_my_location()
        return location.longitude
    
    @property
    def my_lat(self):
        location = self.get_my_location()
        return location.latitude
    
    @property
    def mine(self):
        if not hasattr(self, '_mine'):
            self._mine = self._get_mine()
        return self._mine
        
    def get_by_ip(self, ip):
        with geoip2.database.Reader(self.db_path) as reader:
            response = reader.city(ip)
            print (f'My IP info:{response}')
        return response
    
    def _get_mine(self):
        return self.get_by_ip(self.my_ip)
    
    def _get_my_ip(self):
        external_ip = urllib.request.urlopen('https://ident.me').read().decode('utf8')
        return external_ip
    
    def get_my_location(self):
        return self.mine.location
    
    def get_my_city(self):
        return self.mine.city.name
    
    def get_my_province(self):
        return self.mine.subdivisions[0].iso_code
            
gp = GeoIp()
data = gp.mine
data = gp.get_my_location()
print(data)