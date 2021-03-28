import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

Window {
    id: main
    width: 1024
    height: 768
    title: qsTr("Creative Keypad Config");
    objectName: "mainWindow"
    visible: true
    signal buttonClickedSignal(int id);
    KeypadConfig {
        objectName: "keypadWindow"
        encFRight.onClicked: {
            Backend.getConfig(12)
        }

        encFLeft.onClicked: {
            Backend.getConfig(11)
        }

        encERight.onClicked: {
            Backend.getConfig(10)
        }

        encELeft.onClicked: {
            Backend.getConfig(9)
        }

        encDRight.onClicked: {
            Backend.getConfig(8)
        }

        encDLeft.onClicked: {
            Backend.getConfig(7)
        }

        encCRight.onClicked: {
            Backend.getConfig(6)
        }

        encCLeft.onClicked: {
            Backend.getConfig(5)
        }

        encBRight.onClicked: {
            Backend.getConfig(4)
        }
        encBLeft.onClicked: {
            Backend.getConfig(3)
        }
        encARight.onClicked: {
            Backend.getConfig(1)
        }
        encALeft.onClicked: {
            Backend.getConfig(0);

        }

    }
}
