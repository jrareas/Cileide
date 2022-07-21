from config import Config
import requests
import time
import json
class Weather:
    def __init__(self, geoip):
        self.config = Config().get('weather')
        self.lastcall = 0
        self.geoip = geoip
    
    def ttl(self):
        now = time.time()
        return now - self.lastcall < self.config.get('ttl')
    
    @property
    def url(self):
        
        return f"{self.config.get('url')}?q={self.geoip.my_lat},{self.geoip.my_long}&key={self.config.get('key')}"
    
    @property
    def data(self):
        if not hasattr(self, '_data') or not self.ttl():
            self._data = {}
            try:
                response = requests.get(self.url)
                self.lastcall = time.time()
                if response.status_code == 200:
                    self._data = json.loads(response.content)
                else:
                    print(f"Failed to get weather: Status code:{response.status_code}")
            except Exception as e:
                print(f"Failed to get weather: {e}")
            
            
        return self._data
        
    @property
    def condition_source_image(self):
        return f"https:{self.data.get('current', {}).get('condition', {}).get('icon')}"
        
    @property
    def humidity(self):
        if current := self.data.get('current'):
            return current.get(self.config.get('field_humidity'))
        else:
            return 0.0
        
    @property
    def temp_c(self):
        if current := self.data.get('current'):
            return current.get(self.config.get('field_temp_c'))
        else:
            return 0.0
        
    @property
    def wind_speed(self):
        if current := self.data.get('current'):
            return current.get(self.config.get('field_wind_speed'))
        else:
            return 0.0