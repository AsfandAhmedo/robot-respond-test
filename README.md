# robot-respond-test
Respond Demo Test Script

# Installations and Configurations

1. Install Google Chrome browser for MacOS [here](https://www.google.com/chrome/)

2. Install Homebrew:
    ```bash
    $ /bin/bash -c "$(curl  -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

    - Then update `~/.zshrc`:
        ```bash
        $ nano ~/.zshrc
        ```

    - Add the following line to the bottom of the file and save it:
        ```bash
        export PATH="/opt/homebrew/bin:$PATH"
        ```

    - Then apply changes:
        ```bash
        $ source ~/.zshrc
        ```

    - Then, restart your Terminal.

3. Install Python 3:
    -   Download latest version of python [here](https://www.python.org/downloads/)

    -   Then, run the downloaded executable file (.pkg, .exe). The Python setup modal should appear. Tick the Add python.exe to PATH to automatically include python to PATH

    -   Then, click `Install Now` and follow the instructions prompted by python setup modal.

    -   Then check if the default is Python 3 (*Should return Python 3.x.x*):
        ```bash
        $ python3 --version
        ```

4. Setup VSCode for IDE
    -   Download VSCode [here](https://code.visualstudio.com/download)

    -   Then install `Robot Framework Language Server` extension from the VSCode marketplace.

5. Configure Git Account in Terminal
    -   Use your personal email account used in Github
        ```bash
        $ git config --global user.email "your.name@aerodyne.group"
        ```
    -   Use the username used in Github
        ```bash
        $ git config --global user.name "your username"
        ```
    
    -   Set remote push destination to default repository
        ```bash
        $ git config --global push.default current
        ```

6. Then, Navigate to `~/Documents/` via Terminal and do these steps:
    -   Clone QA-Autobots repository:
        ```bash
        $ git clone https://github.com/Aerodyne-Group/QA-Autobots.git
        ```
    
    -   Install chromedriver:
        ```bash
        $ brew update
        $ brew uninstall chromedriver
        $ brew install --cask chromedriver
        ```

    -   Ensure that the machine's Google Chrome browser is at the same version as the chromedriver. To check the chromedriver's version:
        ```bash
        $ chromedriver --version
        ```

    - Install and create a virtual environment named `virtualenv`:
        ```bash
        $ python3 -m venv <virtual env name>
        ```

    - Next, we need to specify the `virtualenv` path in the VSCode `Robot Framework Language Server` extension that we previously installed.

    - Navigate to Robot Framework Language Extension > Extension Settings > Language-server: Python and input the path:
        ```bash
        /Users/<user>/Documents/virtualenv/bin/python
        ```

    -   Restart VSCode.

    - Then, activate the `virtualenv` via Terminal in VSCode. Note that in order to activate the virtual environment, user have to be inside the directory where the `virtualenv` folder is located (run `$ deactivate` anytime and anywhere to exit the virtual environment):
        ```bash
        $ source virtualenv/bin/activate
        ```

    - Once activated, notice the `(virtualenv)` preceeding the machine's user name in Terminal. Then install the following:
        - Robot Framework
            ```bash
            $ pip3 install -U robotframework
            ```

        - Selenium Library
            ```bash
            $ pip3 install robotframework-seleniumlibrary
            ```

        - Requests
            ```bash
            $ pip3 install robotframework-requests
            ```

        - Appium Library
            ```bash
            $ pip3 install robotframework-appiumlibrary
            ```

        - Pabot
            ```bash
            $ pip3 install robotframework-pabot
            ```

        - Then, save the project dependencies in a file named `Robotframework_Requirements.txt`
            ```bash
            $ pip3 freeze > requirements.txt
            ```

    -   If while working on the project, you decided to add more libraries, you can re-run the same command to save the newly added libraries. If you decide to setup the same project on a different machine, you can install the same dependencies saved in the `Robotframework_Requirements.txt` file. Just run:
        ```bash
        pip3 install -r requirements.txt
        ```

# Execute the test automation script

1. The execution will be done via Terminal

2. Ensure that the virtual environment is activated

3. Navigate into the folder containing the test that you want to execute, via Terminal.

4. Run the test:
    ```bash
    $ robot <test_file_name>.robot
    ```

5. To view the HTML test report:
    ```bash
    $ open log.html
    ```

