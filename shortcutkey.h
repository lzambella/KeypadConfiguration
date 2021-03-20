/**
  * Class describing a single key action
  * A physical key will be mapped to an instance of
  * this class where it can be translated to a keystroke
  *
  * This code is window-specific
  */

#ifndef SHORTCUTKEY_H
#define SHORTCUTKEY_H
#include <QObject>
#include <qt_windows.h>

class ShortcutKey
{
public:
    enum MODIFIERS {
        CTRL,
        SHIFT,
        ALT,
        NONE
    };

    ShortcutKey();
    /**
     * @brief ShortcutKey Create an instance of the class
     * @param key The key the button maps to
     * @param mod any modifiers the key should use
     */
    ShortcutKey(char key, MODIFIERS mod);

private:
    /**
     * @brief What physical key this instance represents
     * See the table for a list of keys
     */
    unsigned char * physical_key;
    /**
     * @brief virtual keycode the key maps to.
     * Usable by windows
     */
    DWORD virtual_key;
    /**
     * @brief Virtual keycode modifier, if applicable, the key maps to.
     * Usable by windows
     */
    DWORD virtual_modifier;

};

#endif // SHORTCUTKEY_H
