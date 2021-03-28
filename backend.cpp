#include "backend.h"

Backend::Backend(QQmlApplicationEngine * eng)
{
    // Get the QML
    Backend::engine = eng;
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
    qDebug() << "Button pressed.";
    // Fill the view with the data from the config
}

void Backend::saveConfig(int id, ShortcutKey::MODIFIERS mod, char keystroke) {
    qDebug() << "Saving the config";
    // Get the status of the current button and change accordingly
    ShortcutKey shortcut(keystroke, mod);
    switch (id) {
    // A Left
    case 0:
        Backend::config.setEncoderValue(0, &shortcut, KeypadConfiguration::LEFT);
        break;
    case 1:
        Backend::config.setEncoderValue(0, &shortcut, KeypadConfiguration::RIGHT);
    default:
        break;
    }

    Backend::config.serializeConfiguration();
}
