#include "keypadconfiguration.h"

KeypadConfiguration::KeypadConfiguration()
{

}

void KeypadConfiguration::setEncoderValue(int id,
                                            ShortcutKey *key_config,
                                            KeypadConfiguration::DIRECTION dir) {
    int i = (dir == KeypadConfiguration::LEFT ? 1 : 0);
    switch (id) {
    case 0:
        KeypadConfiguration::encoder_a[i] = *key_config;
        break;
    case 1:
        KeypadConfiguration::encoder_b[i] = *key_config;
        break;
    case 2:
        KeypadConfiguration::encoder_c[i] = *key_config;
        break;
    case 3:
        KeypadConfiguration::encoder_d[i] = *key_config;
        break;
    case 4:
        KeypadConfiguration::encoder_e[i] = *key_config;
        break;
    case 5:
        KeypadConfiguration::encoder_f[i] = *key_config;
        break;
    default:
        break;
    }
    qDebug() << "Encoder configured";
}
