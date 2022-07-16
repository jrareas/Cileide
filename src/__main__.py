import os
import fcntl
import sys
from main_window import MainWindow
from PyQt5.QtGui import QGuiApplication
import tempfile

PROJECT_DIR = os.path.dirname(os.path.realpath(__file__))
TEMPDIR = tempfile.gettempdir()
lock_file_path = f'{TEMPDIR}/cileide_launcher.lock'

def file_is_locked(file_path):
    global lock_handle
    lock_handle= open(file_path, 'w')
    try:
        fcntl.lockf(lock_handle, fcntl.LOCK_EX | fcntl.LOCK_NB)
        return False
    except IOError:
        return True

if file_is_locked(lock_file_path):
    print("[ERROR] another instance is running exiting now\n")
    exit(0)
    
app = QGuiApplication(sys.argv)
main = MainWindow(app)
sys.exit(app.exec_())
try:
    sys.exit(app.exec())
except Exception as exc:
    print("Main Exception: ", exc )
