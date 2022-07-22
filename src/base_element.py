from PyQt5.QtCore import pyqtSignal, pyqtSlot, QObject
class BaseElement(QObject):
    def __init__(self, root, element_id):
        QObject.__init__(self)
        self.element_id = element_id
        self.root = root
    
    @property
    def element(self):
        if not hasattr(self, "_elment"):
            self._elment = self.get_child_by_id(self.element_id)
        return self._elment
            
    def get_child_by_id(self, element_id):
        return self.root.findChild(QObject, element_id)
    
    def initial_state(self):
        pass