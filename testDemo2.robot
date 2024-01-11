*** Settings ***
Library  SeleniumLibrary
Test Setup     Open Luma home page
Test Teardown  Close Browser Session
Resource       resources.robot

# robot C:\Users\Aisha\PycharmProjects\pythonProject\AutomatingLuma\testDemo2.robot

*** Test Cases ***
Open Luma Website
    Validate unsuccessful Login
    Wait until it checks and display error message
    verify error message is correct
#    Successful Login

*** Keywords ***
Validate unsuccessful Login
    Click Element   xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div/ul[2]/li[2]/a
    Input Text      xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/form/div[1]/input[1]  ${user_name}
    Input Password  xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/form/div[1]/input[2]  ${invalid_password}
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
    Input Text      xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/form/div[1]/input[1]  ${user_name}
    Input Password  xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/form/div[1]/input[2]  ${valid_password}
    Click Button    xpath:/html/body/div[3]/div[3]/div/div/div/div/div/div/div/div/form/div[2]/button

Close Browser Session
    Close Browser

