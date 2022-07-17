

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import Constants 1.0
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Rectangle {
    id: rectangle
    width: 800
    height: 450
    color: "#f8f8f8"
    border.color: "#ffffff"

    Rectangle {
        id: rectangle1
        x: 600
        y: 0
        width: 200
        height: 450
        color: "#ffffff"

        Rectangle {
            id: rectangle2
            x: 0
            y: 0
            width: 200
            height: 250
            color: "#e8e8e8"

            Text {
                id: temp_c_id
                x: 18
                y: 105
                width: 30
                color: "#1e36b0"
                text: qsTr("-47")
                elide: Text.ElideNone
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                scale: 2.19
            }

            Button {
                id: btn_close
                x: 129
                y: 15
                width: 63
                height: 54
                text: qsTr("")
                z: 0
                background: Rectangle {
                    color: "#e8e8e8"
                }
                Connections {
                    function onClicked() {
                        Qt.callLater(Qt.quit)
                    }
                }

                Image {
                    id: image
                    x: -10
                    y: 8
                    width: 62
                    height: 73
                    source: "src/pictures/close_70x70_white.png"
                    fillMode: Image.PreserveAspectCrop
                }
            }

            Text {
                id: temp_c_type
                x: 73
                y: 105
                color: "#1e36b0"
                text: "⁰C"
                elide: Text.ElideNone
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                scale: 2.19
            }

            Text {
                id: city_id
                x: 39
                y: 223
                width: 60
                color: "#810505"
                text: qsTr("city")
                elide: Text.ElideNone
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                scale: 2.19
            }

            Text {
                id: province_id
                x: 168
                y: 223
                width: 20
                color: "#810505"
                text: qsTr("pr")
                elide: Text.ElideNone
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                scale: 2.19
            }
            Connections {
                target: main
                function onTextCity(cityName) {
                    city_id.text = cityName
                }
                function onTextProvince(provinceName) {
                    province_id.text = provinceName
                }

                function onTextTempC(temp_c) {
                    temp_c_id.text = temp_c
                }
                function onTextTime(my_time) {
                    time_id.text = my_time
                }
                function onTextDay(month_day) {
                    month_day_id.text = month_day
                }
                function onTextWeekDay(week_day) {
                    weekday_id.text = week_day
                }
                function onTextMonth(month) {
                    month_id.text = month
                }
                function onTextYear(year) {
                    year_id.text = year
                }
                function onImgConditionSource(source) {
                    condition_id.source = source
                }
                function onTextHumidity(humidity) {
                    hum_id.text = humidity
                }
                function onTextHumidityIn(humidity_in) {
                    temp_c_in_id.text = humidity
                }
                function onTextTempCIn(temp_c_in) {
                    hum_in_id.text = humidity
                }
            }

            Image {
                id: condition_id
                x: -4
                y: 15
                width: 127
                height: 101
                source: "https://cdn.weatherapi.com/weather/64x64/night/113.png"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: hum_signal_id
                x: 172
                y: 105
                color: "#1e36b0"
                text: "%"
                elide: Text.ElideNone
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                scale: 2.19
            }

            Text {
                id: hum_id
                x: 117
                y: 105
                width: 30
                color: "#1e36b0"
                text: qsTr("-47")
                elide: Text.ElideNone
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                scale: 2.19
            }

            Rectangle {
                id: rectangle5
                x: 0
                y: 135
                width: 200
                height: 76
                color: "#d1c9c9"

                Text {
                    id: temp_c_in_id
                    x: 113
                    y: 15
                    width: 30
                    color: "#31643c"
                    text: qsTr("-470")
                    elide: Text.ElideNone
                    font.pixelSize: 9
                    horizontalAlignment: Text.AlignRight
                    scale: 2.19
                }

                Text {
                    id: hum_in_id
                    x: 130
                    y: 50
                    width: 20
                    color: "#31643c"
                    text: qsTr("-47")
                    elide: Text.ElideNone
                    font.pixelSize: 9
                    horizontalAlignment: Text.AlignRight
                    scale: 2.19
                }

                Text {
                    id: hum_signal_in_id
                    x: 173
                    y: 50
                    color: "#31643c"
                    text: "%"
                    elide: Text.ElideNone
                    font.pixelSize: 9
                    horizontalAlignment: Text.AlignRight
                    scale: 2.19
                }

                Text {
                    id: temp_c_type2
                    x: 171
                    y: 15
                    color: "#31643c"
                    text: "⁰C"
                    elide: Text.ElideNone
                    font.pixelSize: 9
                    horizontalAlignment: Text.AlignRight
                    scale: 2.19
                }

                Image {
                    id: image2
                    x: 23
                    y: 0
                    width: 66
                    height: 76
                    source: "images/indoor.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Text {
                id: province_id1
                x: 133
                y: 223
                width: 10
                color: "#810505"
                text: qsTr(",")
                elide: Text.ElideNone
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                scale: 2.19
            }
        }

        Rectangle {
            id: rectangle3
            x: 0
            y: 250
            width: 200
            height: 200
            color: "#151212"

            Text {
                id: time_id
                x: 0
                y: 0
                width: 200
                height: 44
                color: "#ffffff"
                text: qsTr("00:00")
                font.pixelSize: 36
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Text {
                id: weekday_id
                x: 83
                y: 90
                width: 200
                height: 37
                color: "#ffffff"
                text: qsTr("Monday")
                font.pixelSize: 30
                horizontalAlignment: Text.AlignHCenter
                rotation: 90
            }

            Text {
                id: month_id
                x: -78
                y: 86
                width: 200
                height: 44
                color: "#ffffff"
                text: qsTr("January")
                font.pixelSize: 36
                horizontalAlignment: Text.AlignHCenter
                rotation: 270
            }

            Text {
                id: month_day_id
                x: 0
                y: 75
                width: 200
                height: 44
                color: "#ffffff"
                text: qsTr("26")
                font.pixelSize: 36
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                id: year_id
                x: 2
                y: 157
                width: 200
                height: 44
                color: "#ffffff"
                text: qsTr("2022")
                font.pixelSize: 36
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    Item {
        id: __materialLibrary__
    }

    Rectangle {
        id: rect_main
        x: 0
        y: 0
        width: 600
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
    }

    Rectangle {
        id: rect_settings
        x: 0
        y: 0
        width: 600
        height: 450
        color: "#ffffff"

        Rectangle {
            id: rectangle4
            x: 0
            y: 0
            width: 600
            height: 80
            color: "#ffffff"

            Button {
                id: btn_network
                x: 24
                y: 24
                width: 81
                height: 38
                text: qsTr("Network")
                checked: false
                checkable: true
                highlighted: true
            }
        }
    }
}

/*##^##
Designer {
    D{i:0}D{i:13}D{i:14}D{i:16}D{i:17}D{i:18}D{i:19}D{i:21}D{i:29;invisible:true}
}
##^##*/

