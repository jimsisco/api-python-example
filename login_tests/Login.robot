*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          ../resources/resource.robot
Resource          ../resources/DataManager.robot
Resource          ../resources/LoginApp.robot
Resource          ../resources/AccountPageApp.robot


*** Variables ***

*** Test Cases ***

#robot -d results login_tests/login.robot

Test Login
    ${TestData} =  Get CSV Data  ${CREDENTIALS_PATH_CSV}
    LoginApp.Test Logins  ${TestData}

Goto Account Page
    Navigate to Account Page

Add a contact
    ${TestData} =  Get CSV Data  ${CREDENTIALS_PATH_CSV}
    Navigate to Add Contact Page  ${TestData}

Get SSICO
    ${GETSISCOCODE} =  Get SISCO Code
    Navigate to Add Contact Page  ${GETSISCOCODE}


#[teardown]  close browser
