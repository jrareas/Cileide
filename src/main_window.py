import os
from datetime import datetime

from PyQt5.QtWidgets import QApplication
from PyQt5.QtQml import QQmlApplicationEngine
from geoip import GeoIp
from weather import Weather
from sensor import Sensors
from PyQt5.QtCore import pyqtSignal, pyqtSlot, QObject,QTimer, QModelIndex


UI_FOLDER = f"{os.path.dirname(os.path.realpath(__file__))}/.."

class MainWindow(QObject):
    textCity = pyqtSignal(str, arguments=['cityName'])
    textProvince = pyqtSignal(str, arguments=['provinceName'])
    textTempC = pyqtSignal(float, arguments=['temp_c'])
    textTime = pyqtSignal(str, arguments=['my_times'])
    
    textDay = pyqtSignal(str, arguments=['month_day'])
    textWeekDay = pyqtSignal(str, arguments=['week_day'])
    textMonth = pyqtSignal(str, arguments=['month'])
    textYear = pyqtSignal(str, arguments=['year'])
    imgConditionSource = pyqtSignal(str, arguments=['source'])
    settingsClicked = pyqtSignal(str, arguments=['source'])
    textHumidity = pyqtSignal(int, arguments=['humidity'])
    textHumidityIn = pyqtSignal(int, arguments=['humidity_in'])
    textTempCIn = pyqtSignal(float, arguments=['temp_c_in'])
    textWindSpeed = pyqtSignal(float, arguments=['wind_speed'])
    
    def __init__(self, app):
        self.app = app
        QObject.__init__(self)
        self.engine = QQmlApplicationEngine()
        self.engine.rootContext().setContextProperty("main", self)
        self.engine.quit.connect(self.app.quit)
        self.engine.addImportPath(f'{UI_FOLDER}/imports')
        self.engine.load(f'{UI_FOLDER}/Cileide.qml')
        self.geoip = GeoIp()
        self.weather = Weather(self.geoip)
        self.sensors = Sensors()
        self.textCityUpdate(self.geoip.get_my_city())
        self.textProvinceUpdate(self.geoip.get_my_province())
        self.refresh_data()
        self.set_current_time()
        self.time_timer = self.get_timer(self.set_current_time)
        self.minute_timer = self.get_timer(self.refresh_data, 70000)
        root_list = self.engine.rootObjects()
        if len(root_list) > 0:
            root = root_list[0]
            button = root.findChild(QObject,"btn_settings_id")
            button.clicked.connect(self.settings_clicked)
        else:
            print("Could not find root")

    def get_timer(self, connect, interval=20000):
        t = QTimer()
        t.setInterval(interval)
        t.timeout.connect(connect)
        t.start()
        return t
        
    def set_current_time(self):
        now = datetime.now()
        self.textTimeUpdate(now.strftime("%H:%M"))
        self.textDayUpdate(now.strftime("%d"))
        self.textWeekDayUpdate(now.strftime("%A"))
        self.textMonthUpdate(now.strftime("%B"))
        self.textYearUpdate(now.strftime("%Y"))
   
    @pyqtSlot(float)
    def textWindSpeedUpdate(self, wind_speed):
        self.textWindSpeed.emit(wind_speed)

    @pyqtSlot(str)
    def imgConditionSourceUpdate(self, source):
        self.imgConditionSource.emit(source) 
        
    @pyqtSlot(str)
    def textYearUpdate(self, year):
        self.textYear.emit(year) 
        
    @pyqtSlot(str)
    def textMonthUpdate(self, month):
        self.textMonth.emit(month) 
        
    @pyqtSlot(str)
    def textWeekDayUpdate(self, weekday):
        self.textWeekDay.emit(weekday)    
        
    @pyqtSlot(str)
    def textDayUpdate(self, day):
        self.textDay.emit(day)
        
    @pyqtSlot(str)
    def textTimeUpdate(self, time):
        self.textTime.emit(time)
        
    @pyqtSlot(float)
    def textTempCUpdate(self, temp_c):
        self.textTempC.emit(temp_c)
        
    @pyqtSlot(str)
    def textProvinceUpdate(self, provinceName):
        self.textProvince.emit(provinceName)
        
    @pyqtSlot(str)
    def textCityUpdate(self, cityName):
        self.textCity.emit(cityName)
        
    @pyqtSlot(int)
    def textHumidityUpdate(self, humidity):
        self.textHumidity.emit(humidity)

    @pyqtSlot(str)
    def textHumidityInUpdate(self, humidity_in):
        self.textHumidityIn.emit(humidity_in)
        
    @pyqtSlot(int)
    def textTempCInUpdate(self, temp_c_in):
        self.textTempCIn.emit(temp_c_in)

    @pyqtSlot() 
    def settings_clicked(self):
        print("clicked")    
    
    def refresh_data(self):
        self.textTempCUpdate(self.weather.temp_c)
        self.textHumidityUpdate(self.weather.humidity)
        self.imgConditionSourceUpdate(self.weather.condition_source_image)
        self.textHumidityInUpdate(self.sensors.humidity)
        self.textTempCInUpdate(self.sensors.temp_c)
        self.textWindSpeedUpdate(self.weather.wind_speed)
        
