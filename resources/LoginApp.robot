*** Settings ***
Resource    ../resources/PO/LoginTest.robot

*** Keywords ***

Test Logins
    [Arguments]  ${TestData}
    Open Browser To Login Page
    Browser is Opened to Login Page
    Enter UserName  ${TestData}
    Enter Password  ${TestData}
    Submit credentials
    User Dashboard Page Should Be Displayed

Enter UserName
    [Arguments]  ${Credentials}
    UserName  ${Credentials[0]}

Enter Password
    [Arguments]  ${Credentials}




    Password  ${Credentials[0]}