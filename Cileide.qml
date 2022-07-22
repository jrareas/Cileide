import QtQuick 2.15
import Constants 1.0
import QtQuick.Controls 2.15

ApplicationWindow {
    flags:  Qt.FramelessWindowHint
    visible: true
    width: Constants.width
    height: Constants.height
    StackView {
        anchors.fill: parent
    }
    MainWindow {
    }
    MainPanel{
        visible:true
        objectName: "MainPanel"
    }
    SettingsWindow {
        visible:false
        objectName: "SettingsWindow"
    }
}
