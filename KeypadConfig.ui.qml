import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

Rectangle {
    id: rectangle
    width: 1024
    height: 768
    visible: true


    Rectangle {
        id: configKeyDialog
        x: 0
        y: 0
        width: 1024
        height: 768
        visible: true
        color: "#555a5e"

        CheckBox {
            id: ctrlCheckBox
            x: 71
            y: -285
            visible: false
            text: qsTr("Check Box")
        }

        CheckBox {
            id: altCheckBox
            x: 288
            y: -285
            visible: false
            text: qsTr("Check Box")
        }

        CheckBox {
            id: shiftCheckBox
            x: 489
            y: -285
            visible: false
            text: qsTr("Check Box")
        }

        Text {
            id: text1
            x: 249
            y: -375
            visible: false
            text: qsTr("Text")
            font.pixelSize: 12
        }

        TextInput {
            id: textInput
            x: 323
            y: -170
            width: 80
            height: 20
            visible: false
            text: qsTr("Text Input")
            font.pixelSize: 12
        }

        Text {
            id: text2
            x: 76
            y: -170
            visible: false
            text: qsTr("Text")
            font.pixelSize: 12
        }

        Button {
            id: confirmButton
            x: 398
            y: 590
            visible: false
            text: qsTr("Button")

            Connections {
                target: confirmButton
                onClicked: rectangle.state = "base state"
            }
        }
    }

    Image {
        id: keypadBase
        x: 0
        y: 147
        width: 1024
        height: 605
        source: "CreativeKeypadAssembly2.png"
        fillMode: Image.PreserveAspectFit

        Button {
            id: button
            x: 363
            y: 307
            width: 62
            height: 59
            text: qsTr("1")
            font.pointSize: 30
        }

        Button {
            id: button1
            x: 442
            y: 307
            width: 62
            height: 59
            text: qsTr("2")
            font.pointSize: 30
        }

        Button {
            id: button2
            x: 517
            y: 307
            width: 62
            height: 59
            text: qsTr("3")
            font.pointSize: 30
        }

        Button {
            id: button3
            x: 594
            y: 307
            width: 62
            height: 59
            text: qsTr("4")
            font.pointSize: 30
        }

        Button {
            id: button4
            x: 363
            y: 382
            width: 62
            height: 59
            text: qsTr("5")
            font.pointSize: 30
        }

        Button {
            id: button5
            x: 442
            y: 382
            width: 62
            height: 59
            text: qsTr("6")
            font.pointSize: 30
        }

        Button {
            id: button6
            x: 517
            y: 382
            width: 62
            height: 59
            text: qsTr("7")
            font.pointSize: 30
        }

        Button {
            id: button7
            x: 594
            y: 382
            width: 62
            height: 59
            text: qsTr("8")
            font.pointSize: 30
        }

        Button {
            id: button8
            x: 363
            y: 458
            width: 62
            height: 59
            text: qsTr("9")
            font.pointSize: 30
        }

        Button {
            id: button9
            x: 442
            y: 458
            width: 62
            height: 59
            text: qsTr("10")
            font.pointSize: 30
        }

        Button {
            id: button10
            x: 517
            y: 458
            width: 62
            height: 59
            text: qsTr("11")
            font.pointSize: 30
        }

        Button {
            id: button11
            x: 594
            y: 458
            width: 62
            height: 59
            text: qsTr("12")
            font.pointSize: 30
        }

        Button {
            id: encALeft
            x: 175
            y: 80
            width: 62
            height: 59
            text: qsTr("<")
            font.pointSize: 30
        }

        Button {
            id: encARight
            x: 243
            y: 80
            width: 62
            height: 59
            text: qsTr(">")
            font.pointSize: 30

            Connections {
                target: encARight
                onClicked: rectangle.state = "EditKey"
            }
        }

        Button {
            id: encBLeft
            x: 175
            y: 273
            width: 62
            height: 59
            text: qsTr("<")
            font.pointSize: 30
        }

        Button {
            id: encBRight
            x: 243
            y: 273
            width: 62
            height: 59
            text: qsTr(">")
            font.pointSize: 30
        }

        Button {
            id: encCLeft
            x: 175
            y: 478
            width: 62
            height: 59
            text: qsTr("<")
            font.pointSize: 30
        }

        Button {
            id: encCRight
            x: 243
            y: 478
            width: 62
            height: 59
            text: qsTr(">")
            font.pointSize: 30
        }

        Button {
            id: encDLeft
            x: 711
            y: 80
            width: 62
            height: 59
            text: qsTr("<")
            font.pointSize: 30
        }

        Button {
            id: encDRight
            x: 779
            y: 80
            width: 62
            height: 59
            text: qsTr(">")
            font.pointSize: 30
        }

        Button {
            id: encELeft
            x: 711
            y: 273
            width: 62
            height: 59
            text: qsTr("<")
            font.pointSize: 30
        }

        Button {
            id: encERight
            x: 779
            y: 273
            width: 62
            height: 59
            text: qsTr(">")
            font.pointSize: 30
        }

        Button {
            id: encFLeft
            x: 711
            y: 478
            width: 62
            height: 59
            text: qsTr("<")
            font.pointSize: 30
        }

        Button {
            id: encFRight
            x: 779
            y: 478
            width: 62
            height: 59
            text: qsTr(">")
            font.pointSize: 30
        }
    }


    states: [
        State {
            name: "EditKey"

            PropertyChanges {
                target: keypadBase
                x: 8
                y: 151
                visible: false
            }

            PropertyChanges {
                target: ctrlCheckBox
                x: 233
                y: 237
                visible: true
                text: qsTr("CTRL")
                font.pointSize: 35
            }

            PropertyChanges {
                target: altCheckBox
                x: 450
                y: 237
                visible: true
                text: qsTr("ALT")
                font.pointSize: 35
            }

            PropertyChanges {
                target: shiftCheckBox
                x: 651
                y: 237
                visible: true
                text: qsTr("SHIFT")
                font.pointSize: 35
            }

            PropertyChanges {
                target: text1
                x: 411
                y: 147
                visible: true
                text: qsTr("Modifiers")
                font.pixelSize: 51
                font.underline: true
                minimumPixelSize: 40
            }

            PropertyChanges {
                target: textInput
                x: 485
                y: 352
                width: 341
                height: 60
                visible: true
                text: qsTr("[Input here]")
                font.pixelSize: 50
            }

            PropertyChanges {
                target: text2
                x: 238
                y: 352
                visible: true
                text: qsTr("Keystroke:")
                font.pixelSize: 50
            }

            PropertyChanges {
                target: configKeyDialog
                x: 0
                y: 0
                width: 1024
                height: 768
            }

            PropertyChanges {
                target: confirmButton
                x: 398
                y: 590
                visible: true
                text: qsTr("Confirm")
                font.pointSize: 50
            }
        }
    ]
    Label {
        id: label
        x: 270
        y: 38
        text: qsTr("Keypad Config Beta")
        font.pointSize: 42
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
