*** Settings ***
Documentation       A resource file with reusable keywords and variables.
...
...                 The system specific keywords created here form our own
...                 domain specific language. They utilize keywords procided
...                 by the imported SeleniumLibrary.
Library             SeleniumLibrary


*** Variables ***
${BROWSER}              chrome
${URL}                  https://luma.enablementadobe.com/content/luma/us/en.html
${Error_Message_Login}  xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/div[1]
${user_name}            jackyjones@ethycadigital.com
${invalid_password}     password
${valid_password}       password@2023

*** Keywords ***
Open Luma home page
    Open Browser  ${URL}  ${BROWSER}
    Set Selenium Speed  0.5
    Maximize Browser Window
