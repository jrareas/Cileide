from PyQt5.QtCore import pyqtSignal, pyqtSlot, QObject,QTimer, QModelIndex

class MainPanel(QObject):
    def __init__(self, app):
        self.app = app
        QObject.__init__(self)