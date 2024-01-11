*** Settings ***
Library  SeleniumLibrary
Test Teardown  Close Browser

# robot C:\Users\Aisha\PycharmProjects\pythonProject\AutomatingLuma\TestCase1.robot

*** Variables ***
${BROWSER}              chrome
${URL}                  https://luma.enablementadobe.com/content/luma/us/en.html
${Error_Message_Login}  xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/div[1]

*** Test Cases ***
Open Luma Website
    Open Luma home page
    Validate unsuccessful Login
    Wait until it checks and display error message
    verify error message is correct
#    Successful Login

*** Keywords ***
Open Luma home page
    Open Browser  ${URL}  ${BROWSER}
    Set Selenium Speed  0.5
    Maximize Browser Window

Validate unsuccessful Login
    Click Element   xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div/ul[2]/li[2]/a
    Input Text      xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/form/div[1]/input[1]  jackyjones@ethycadigital.com
    Input Password  xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/form/div[1]/input[2]  password
    Click Button    xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/form/div[2]/button

Wait until it checks and display error message
    Wait Until Element Is Visible  ${Error_Message_Login}
    Set Selenium Speed  0.5

verify error message is correct
#   ${result}=  Get Text   ${Error_Message_Login}
#   Should Be Equal As Strings  ${result}  User name and password do not match
    Element Text Should Be      ${Error_Message_Login}      User name and password do not match


Successful Login
    Click Element   xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div/ul[2]/li[2]/a
    Input Text      xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/form/div[1]/input[1]  jackyjones@ethycadigital.com
    Input Password  xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/form/div[1]/input[2]  password@2023
    Click Button    xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/form/div[2]/button

#Close Browser

