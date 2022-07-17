from config import Config
from hwmon import Hwmon

class Sensors:
    def __init__(self):
        self.config = Config().get('sensor')
        self.temp_humid_sensor = self.config.get('temp_hum_sensor')
        self.sensor_hw = Hwmon.HW()
        self.check_or_install_sensor()
        
        

    def install_sensor(self, sensor):
        try:
            sensor_id = sensor.get("sensor_identification")
            with open(sensor.get('sys_folder'), "w") as file_object:
                file_object.write(sensor.get('sensor_identification'))
        except Exception as e:
            print(f"Could not install sensor with id: '{sensor_id}'")
        
    def check_or_install_sensor(self):
        sensor_data = self.sensor_hw.data()
        if not sensor_data.get(self.temp_humid_sensor.get('name'), {}):
            self.install_sensor(self.temp_humid_sensor)
                    
        
    @property
    def humidity(self):
        try:
            if data := self.sensor_hw.data():
                humidity = float(data.get(self.temp_humid_sensor.get('name'), {}).get('humidity1',0))
                return int(humidity)                                               
        except Exception as e:                       
            print(f"Error while reading device: {e}")
            return 0
             
    @property        
    def temp_c(self):
        try:                                 
            if data := self.sensor_hw.data():                                          
                temp_c = float(data.get(self.temp_humid_sensor.get('name'), {}).get('temp1', 0.0)) 
                return round(temp_c, 1)                                                
        except Exception as e:                       
            print(f"Error while reading device: {e}")
            return 0.0              
    def data(self):                 
        return self.sensor_hw.data()