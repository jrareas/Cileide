from base_element import BaseElement
from PyQt5.QtCore import pyqtSignal, pyqtSlot, QObject

class SettingsWindow(BaseElement):
    
    def __init__(self, root, element_id):
        BaseElement.__init__(self, root, element_id)
        self.element.setProperty("visible", True)
        btn_back = self.get_child_by_id("btn_settings_back")
        btn_back.clicked.connect(self.back_clicked)
    
    @pyqtSlot() 
    def back_clicked(self):
        self.element.setProperty("visible", False)
        