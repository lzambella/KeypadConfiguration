import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

Window {
    id: main
    minimumHeight: 768
    minimumWidth: 1024
    width: 1024
    height: 768
    title: qsTr("Creative Keypad Config");
    objectName: "mainWindow"
    visible: true

    signal buttonClickedSignal(int id);
    KeypadConfig {
        property var selected: 0;
        objectName: "keypadWindow"
        encFRight.onClicked: {
            selected = 11;
            Backend.getConfig(12)
        }

        encFLeft.onClicked: {
            selected = 10;
            Backend.getConfig(11)
        }

        encERight.onClicked: {
            selected = 9;
            Backend.getConfig(10)
        }

        encELeft.onClicked: {
            selected = 8;
            Backend.getConfig(9)
        }

        encDRight.onClicked: {
            selected = 7;
            Backend.getConfig(8)
        }

        encDLeft.onClicked: {
            selected = 6;
            Backend.getConfig(7)
        }

        encCRight.onClicked: {
            selected = 5;
            Backend.getConfig(6)
        }

        encCLeft.onClicked: {
            selected = 4;
            Backend.getConfig(5)
        }

        encBRight.onClicked: {
            selected = 3;
            Backend.getConfig(4)
        }
        encBLeft.onClicked: {
            selected = 2;
            Backend.getConfig(3)
        }
        encARight.onClicked: {
            selected = 1;
            Backend.getConfig(1)
        }
        encALeft.onClicked: {
            selected = 0;
            Backend.getConfig(0);

        }
        confirmButton.onClicked: {
            Backend.writeConfig(selected, 0, textInput.text);
        }

    }
}
