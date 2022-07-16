import QtQuick 2.15
import Constants 1.0
import QtQuick.Controls 2.15

ApplicationWindow {
    flags:  Qt.FramelessWindowHint
    visible: true
    width: 800
    height: Constants.height
    StackView {
        anchors.fill: parent
    }
    MainWindow {
    }
}
