#include "shortcutkey.h"

ShortcutKey::ShortcutKey()
{

}
ShortcutKey::ShortcutKey(char key, ShortcutKey::MODIFIERS mod) {
    this->mod = mod;
    this->physical_key = key;
    // For the virtual keys
    HKL locale = LoadKeyboardLayoutA("0x0409", 1);
    this->virtual_key = (qint64) VkKeyScanEx(key, locale);
    switch (mod) {
    case ShortcutKey::CTRL:
        this->virtual_modifier = VK_LCONTROL;
        break;
    case ShortcutKey::ALT:
        break;
    case ShortcutKey::SHIFT:
        this->virtual_modifier = VK_LSHIFT;
        break;
    case ShortcutKey::NONE:
        this->virtual_modifier = NULL;
        break;
    default:
        this->virtual_modifier = NULL;
        break;
    }

}

QDataStream &operator<<(QDataStream &out, ShortcutKey &in) {
    QDataStream::FloatingPointPrecision prev = out.floatingPointPrecision();
    out.setFloatingPointPrecision(QDataStream::DoublePrecision);
    out << (qint64)  in.getMod()
        << (QString) in.getPhysKey()
        << (qint64)  in.getVirtKey()
        << (qint64)  in.getVirtMod();
    out.setFloatingPointPrecision(prev);
    return out;
}


QDataStream &operator>>(QDataStream &in, ShortcutKey &key) {
    ShortcutKey::MODIFIERS mod;
    QString phys_key;
    qint64 virt_key;
    qint64 virt_mod;
    in >> mod;
    in >> phys_key;
    in >> virt_key;
    in >> virt_mod;

    key.mod = mod;
    key.physical_key = phys_key;
    key.virtual_key = virt_key;
    key.virtual_modifier = virt_mod;

    return in;
}
