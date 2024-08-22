# robot-respond-test
Respond Demo Test Script

Installations and Configurations
Install Google Chrome browser for MacOS here

Install Homebrew:

$ /bin/bash -c "$(curl  -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
Then update ~/.zshrc:

$ nano ~/.zshrc
Add the following line to the bottom of the file and save it:

export PATH="/opt/homebrew/bin:$PATH"
Then apply changes:

$ source ~/.zshrc
Then, restart your Terminal.

Install Python 3:

Download latest version of python here

Then, run the downloaded executable file (.pkg, .exe). The Python setup modal should appear. Tick the Add python.exe to PATH to automatically include python to PATH

Then, click Install Now and follow the instructions prompted by python setup modal.

Then check if the default is Python 3 (Should return Python 3.x.x):

$ python3 --version
Setup VSCode for IDE

Download VSCode here

Then install Robot Framework Language Server extension from the VSCode marketplace.

Configure Git Account in Terminal

Use Aerodyne personal email account used in Github

$ git config --global user.email "your.name@aerodyne.group"
Use the username used in Github

$ git config --global user.name "your username"
Set remote push destination to default repository

$ git config --global push.default current
Then, Navigate to ~/Documents/ via Terminal and do these steps:

Clone QA-Autobots repository:

$ git clone https://github.com/Aerodyne-Group/QA-Autobots.git
Install chromedriver:

$ brew update
$ brew uninstall chromedriver
$ brew install --cask chromedriver
Ensure that the machine's Google Chrome browser is at the same version as the chromedriver. To check the chromedriver's version:

$ chromedriver --version
Install and create a virtual environment named virtualenv:

$ python3 -m venv <virtual env name>
Next, we need to specify the virtualenv path in the VSCode Robot Framework Language Server extension that we previously installed.

Navigate to Robot Framework Language Extension > Extension Settings > Language-server: Python and input the path:

/Users/<user>/Documents/virtualenv/bin/python
Restart VSCode.

Then, activate the virtualenv via Terminal in VSCode. Note that in order to activate the virtual environment, user have to be inside the directory where the virtualenv folder is located (run $ deactivate anytime and anywhere to exit the virtual environment):

$ source virtualenv/bin/activate
Once activated, notice the (virtualenv) preceeding the machine's user name in Terminal. Then install the following:

Robot Framework

$ pip3 install -U robotframework
Selenium Library

$ pip3 install robotframework-seleniumlibrary
Requests

$ pip3 install robotframework-requests
Appium Library

$ pip3 install robotframework-appiumlibrary
Pabot

$ pip3 install robotframework-pabot
Then, save the project dependencies in a file named Robotframework_Requirements.txt

$ pip3 freeze > requirements.txt
If while working on the project, you decided to add more libraries, you can re-run the same command to save the newly added libraries. If you decide to setup the same project on a different machine, you can install the same dependencies saved in the Robotframework_Requirements.txt file. Just run:

pip3 install -r requirements.txt
Execute the test automation script
The execution will be done via Terminal

Ensure that the virtual environment is activated

Navigate into the folder containing the test that you want to execute, via Terminal.

Run the test:

$ robot <test_file_name>.robot
To view the HTML test report:

$ open log.html

