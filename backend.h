#ifndef BACKEND_H
#define BACKEND_H
#include "keypadconfiguration.h"
#include "shortcutkey.h"
/**
 * @brief The backend class
 * Backend class for the UI
 */
class Backend
{
public:
    Backend();
    /**
     * @brief buttonOnClicked
     * Handles pressing a button by changing to the next state
     * and filling the dialog with parameters from the configuration
     * instance
     * @param id the id number of the button, sent through the signal for each button
     */
    void buttonOnClicked(int id);
    /**
     * @brief confirmButtonClicked
     * takes the info given in state 2 and writes to the config
     * instance. also writes the config to a file. Return to state 1 as well.
     */
    void confirmButtonClicked();
private:
    /**
     * @brief config
     * Master configuration class instance
     */
    KeypadConfiguration config;
};

#endif // BACKEND_H
