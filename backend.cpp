#include "backend.h"

Backend::Backend(QQmlApplicationEngine * eng)
{
    // Get the QML
    this->engine = eng;
    qDebug() << "Engine used:" << engine->baseUrl();

}
void Backend::loadWindowComponents() {

    // Get the actual view where all the stuff is
    QObject * mainWindow = Backend::engine->findChild<QObject *>("mainWindow");
    if (mainWindow)
        Backend::keypadUI = mainWindow->findChild<QObject *>("keypadWindow");
    if (!Backend::keypadUI)
        qDebug() << "Configuration window not found.";
    else
        qDebug() << " Found the configuration window";
}
void Backend::getConfig(int id) {
    qDebug() << "Loading configuration...";
}

void Backend::writeConfig(int id, int mod, QString keystroke) {
    qDebug() << "Saving the config";
    qDebug() << "Setting ID " << id << " to " << keystroke;
    // Get the status of the current button and change accordingly
    ShortcutKey shortcut(keystroke, (ShortcutKey::MODIFIERS) 2);
    switch (id) {
    // A Left
    case 0:
        this->config.setEncoderValue(0, &shortcut, KeypadConfiguration::LEFT);
        break;
    // A Right
    case 1:
        this->config.setEncoderValue(0, &shortcut, KeypadConfiguration::RIGHT);
    // B Left
    case 2:
        this->config.setEncoderValue(1, &shortcut, KeypadConfiguration::LEFT);
        break;
    case 3:
        this->config.setEncoderValue(1, &shortcut, KeypadConfiguration::RIGHT);
        break;
    case 4:
        this->config.setEncoderValue(2, &shortcut, KeypadConfiguration::LEFT);
        break;
    case 5:
        this->config.setEncoderValue(2, &shortcut, KeypadConfiguration::RIGHT);
        break;
    case 6:
        this->config.setEncoderValue(3, &shortcut, KeypadConfiguration::LEFT);
        break;
    case 7:
        this->config.setEncoderValue(3, &shortcut, KeypadConfiguration::RIGHT);
        break;
    case 8:
        this->config.setEncoderValue(4, &shortcut, KeypadConfiguration::LEFT);
        break;
    case 9:
        this->config.setEncoderValue(4, &shortcut, KeypadConfiguration::RIGHT);
        break;
    case 10:
        this->config.setEncoderValue(5, &shortcut, KeypadConfiguration::LEFT);
        break;
    case 11:
        this->config.setEncoderValue(5, &shortcut, KeypadConfiguration::RIGHT);
        break;
    case 12:
        this->config.setEncoderValue(6, &shortcut, KeypadConfiguration::LEFT);
        break;
    case 13:
        this->config.setEncoderValue(6, &shortcut, KeypadConfiguration::RIGHT);
        break;
    default:
        break;
    }
    // Now for the numpad fi applicable
    // This is tedious
    for (int i = 14; i < 26; i++) {
        if (id < 14)
            break;
        if (id == i) {
            this->config.setKeypadValue(i, &shortcut);
            break;
        }
    }

    // Use QDatastream streams
    qDebug() << "serializing the configuration";
    // Fill the view with the data from the config
    QFile file("../config.dat");
    if (!file.open(QIODevice::WriteOnly))
            qDebug() << "Could not open file";
    else {
        QDataStream stream(&file);
        stream << this->config;
        file.close();
        qDebug() << "File written";
    }
}
