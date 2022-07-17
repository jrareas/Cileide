from config import Config
from hwmon import Hwmon

class Sensors:
    def __init__(self):
        self.config = Config().get('sensor')
        self.temp_humid_sensor = self.config.get('temp_hum_sensor')
        self.sensor_hw = Hwmon.HW()

    @property
    def humidity(self):
        try:
            if data := self.sensor_hw.data():
                return int(data.get('humidity1',0))
        except Exception as e:
            print(f"Error while reading device: {e}")
            return 0

    @property
    def temp_c(self):
        try:
            if data := self.sensor_hw.data():
                return round(data.get('temp1', 0.0), 1)
        except Exception as e:
            print(f"Error while reading device: {e}")
            return 0.0
