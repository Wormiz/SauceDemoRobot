# Overview
Automation Test in Robot with Gherkin/Selenium WebDriver

## Prerequisites
* RobotFramework
* Python 3++
* SeleniumLibrary
* Geckodriver
* EdgeDriver

### RobotFramework 
Execute:
```
pip install robotframework
```

To check that the installation was succesful, run:
```
robot --version
```

### Python 
At https://www.python.org/downloads/ , select you preffered version and follow the instructions.

### SeleniumLibrary
At https://github.com/robotframework/SeleniumLibrary/, follow the install instructions:
```
pip install --upgrade robotframework-seleniumlibrary
```

Those migrating from *Selenium2Library* can install SeleniumLibrary so that it is exposed also as Selenium2Library:
```
pip install --upgrade robotframework-selenium2library
```

### Geckodriver
At https://github.com/mozilla/geckodriver/releases, follow the install instructions.

### EdgeDriver
At https://docs.microsoft.com/en-us/microsoft-edge/webdriver-chromium/?tabs=c-sharp, follow the install instructions.

## Project Structure
*SauceDemoRobot* -> Main Folder
* resources -> Folder containing libraries, variables and steps developed with keyword
* tests -> Folder containing the feature written in gherkin format

## Language
The project are develop with BDD structure dividing it into a feature containing the scenarios and a file to compose the steps along with the applied logic.

## Execute
To run the tests, just access the "tests" folder:
```
cd tests
```

And run the command: 
```
robot Purchase_Test_Suite.robot
```

After the execution, a log file will be generated containing the information of the tests performed.

To view the detailed information, open the file "report.html"
