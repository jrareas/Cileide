

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
    width: Constants.panel_width
    height: Constants.height
    Rectangle {
        id: rect_main
        x: 0
        y: 0
        width: Constants.panel_width
        height: 450
        color: "#ffffff"

        Column {
            id: column3_id
            x: 400
            y: 0
            width: 200
            height: 450
            spacing: 0

            Row {
                id: row1_id
                width: 200
                height: 141
            }

            Row {
                id: row2
                y: 141
                width: 200
                height: 160
            }

            Row {
                id: c3_row2_id
                y: 320
                width: 200
                height: 141

                Button {
                    id: btn_settings_id
                    objectName: "btn_settings_id"
                    width: 200
                    height: 141
                    text: qsTr("")
                    flat: false
                    highlighted: false
                    Image {
                        id: image1
                        x: 0
                        y: 10
                        width: 200
                        height: 125
                        source: "src/pictures/time.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
            }
        }

        Column {
            id: column2_id
            x: 200
            y: 0
            width: 200
            height: 450
        }

        Column {
            id: column1_id
            x: 0
            y: 0
            width: 200
            height: 450
        }

        Text {
            id: text1
            x: 206
            y: 168
            width: 79
            height: 40
            text: qsTr("")
            font.pixelSize: 12
        }
    }
}
