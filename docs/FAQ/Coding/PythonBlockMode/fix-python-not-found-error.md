# What should I do if the Python environment cannot be found?


## Problem Description

When using Python blocks, the system reports that it cannot find a local Python environment and is unable to run the Python program properly.


## Analysis of Causes

* Python is not installed on the system - The Python interpreter is not installed on the computer.
* Python Path Configuration Error - The Python path configured in Mind+ points to the wrong location.
* Environment variable not set - Python has not been properly added to the system environment variables.


## Solution


### Option 1: Installing the Python Environment

* Visit the official Python website: https://www.python.org/downloads/
* Download the version of Python that is compatible with your operating system (Python 3.7 or later is recommended).
* During installation, make sure to check the "Add Python to PATH" option.
* Restart Mind+ after installation is complete.

### Option 2: Set the Correct Python Path

* In Mind+, click "Connect to Python" → "Switch to Local Python".
* Manually select or enter the correct Python installation path.
* Use the command line to enter `where python` to search for the path.
* After verifying that the path is correct, save the settings.

### Option 3: Using a Remote Python Environment

* UNIHIKER M10: Click "Default-10.1.2.3." Once connected, you can use the onboard Python environment right away.
* Raspberry Pi: Click "New SSH Connection" to connect via SSH and use the Raspberry Pi's Python environment.
* This method does not require a local installation of Python; it's plug-and-play.
