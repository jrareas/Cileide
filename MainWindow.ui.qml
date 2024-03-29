

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
    width: Constants.width
    height: Constants.height
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
            height: 293
            color: "#e8e8e8"

            Text {
                id: temp_c_id
                x: 18
                y: 119
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
                y: 5
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
                y: 119
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
                y: 270
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
                y: 270
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
                    hum_in_id.text = humidity_in
                }
                function onTextTempCIn(temp_c_in) {
                    temp_c_in_id.text = temp_c_in
                }
                function onTextWindSpeed(wind_speed) {
                    wind_speed_id.text = wind_speed
                }
            }

            Image {
                id: condition_id
                x: -4
                y: 15
                width: 125
                height: 90
                source: "https://cdn.weatherapi.com/weather/64x64/day/176.png"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: hum_signal_id
                x: 172
                y: 119
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
                y: 119
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
                y: 144
                width: 200
                height: 80
                color: "#d1c9c9"

                Text {
                    id: temp_c_in_id
                    x: 113
                    y: 15
                    width: 30
                    color: "#31643c"
                    text: qsTr("-470")
                    elide: Text.ElideNone
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignRight
                    scale: 2.19
                }

                Text {
                    id: hum_in_id
                    x: 113
                    y: 55
                    width: 30
                    color: "#31643c"
                    text: qsTr("-47")
                    elide: Text.ElideNone
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignRight
                    scale: 2.19
                }

                Text {
                    id: hum_signal_in_id
                    x: 171
                    y: 55
                    width: 10
                    color: "#31643c"
                    text: "%"
                    elide: Text.ElideNone
                    font.pixelSize: 12
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
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignRight
                    scale: 2.19
                }

                Image {
                    id: image2
                    x: 0
                    y: 0
                    width: 74
                    height: 80
                    source: "src/pictures/indoor.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Text {
                id: province_id1
                x: 133
                y: 270
                width: 10
                color: "#810505"
                text: qsTr(",")
                elide: Text.ElideNone
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                scale: 2.19
            }

            Rectangle {
                id: rectangle6
                x: 0
                y: 224
                width: 200
                height: 35
                color: "#ffffff"

                Image {
                    id: image3
                    x: 0
                    y: 0
                    width: 71
                    height: 35
                    source: "src/pictures/wind.png"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: wind_speed_id
                    x: 66
                    y: 3
                    width: 76
                    height: 29
                    color: "#262323"
                    text: qsTr("100.5")
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignRight
                }

                Text {
                    id: text3
                    x: 150
                    y: 10
                    width: 50
                    color: "#ef0505"
                    text: qsTr("Kph")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                }
            }
        }

        Rectangle {
            id: rectangle3
            x: 0
            y: 294
            width: 200
            height: 156
            color: "#151212"

            Text {
                id: time_id
                x: 0
                y: 0
                width: 200
                height: 44
                color: "#ffffff"
                text: qsTr("00:00")
                font.pixelSize: 30
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Text {
                id: weekday_id
                x: 104
                y: 60
                width: 156
                height: 37
                color: "#ffffff"
                text: qsTr("Monday")
                font.pixelSize: 30
                horizontalAlignment: Text.AlignHCenter
                rotation: 90
            }

            Text {
                id: month_id
                x: -56
                y: 57
                width: 156
                height: 44
                color: "#ffffff"
                text: qsTr("January")
                font.pixelSize: 30
                horizontalAlignment: Text.AlignHCenter
                rotation: 270
            }

            Text {
                id: month_day_id
                x: 0
                y: 59
                width: 200
                height: 44
                color: "#ffffff"
                text: qsTr("26")
                font.pixelSize: 30
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                id: year_id
                x: 0
                y: 116
                width: 200
                height: 40
                color: "#ffffff"
                text: qsTr("2022")
                font.pixelSize: 30
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }
}
