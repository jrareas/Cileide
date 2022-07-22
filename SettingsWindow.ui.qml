

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import Constants 1.0

Item {
    id: item1
    width: Constants.panel_width
    height: Constants.height

    Column {
        id: column
        x: 0
        y: 0
        width: 600
        height: 450
    }

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 400
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Button {
            id: btn_settings_back
            objectName: "btn_settings_back"
            x: 8
            y: 6
            width: 122
            height: 36
            text: qsTr("Back")
        }
    }

    Rectangle {
        id: rectangle1
        x: 187
        color: "#ffffff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 50
        TextField {
            x: 16
            y: 30
            placeholderText: qsTr("Enter name")
        }
    }
}
