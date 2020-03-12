*** Settings ***

Resource        ../data/InputData.robot
Resource        ../resources/PO/AccountPageTest.robot

*** Keywords ***
Navigate to Account Page
    Goto Account Page
    Account Page Should be Displayed

Navigate to Add Contact Page
    [Arguments]  ${TestData}
    [Arguments]  ${GETSSISCODE}
    Goto Add Contact Page
    Add Contact Page Should be Displayed
    Enter FirstName     ${TestData}
    Enter LastName  ${TestData}
    Enter Email     ${TestData}
    Enter Address1  ${TestData}
    Enter City      ${TestData}
    State
    Enter Zip   ${TestData}
    press keys  ${ZIP}  TAB
    Enter Phone     ${TestData}
    press keys  ${ZIP}  TAB
    clear element text  ${SISCO}
    Enter SISCO  ${GETSISCOCODE}
    Uncheck SISCO
    Save Contact


Enter FirstName
    [Arguments]     ${Credentials}
    FirstName  ${Credentials[0]}

Enter LastName
    [Arguments]     ${Credentials}
    LastName  ${Credentials[0]}

Enter Email
    [Arguments]     ${Credentials}
    Email   ${Credentials[0]}

Enter Address1
    [Arguments]     ${Credentials}
    Address1    ${Credentials[0]}

Enter City
    [Arguments]     ${Credentials}
    City    ${Credentials[0]}

Enter Zip
    [Arguments]     ${Credentials}
    Zip     ${Credentials[0]}

Enter SISCO
    [Arguments]     ${Credentials}
    SISCO   ${Credentials[0]}



Enter Phone
    [Arguments]     ${Credentials}
    Phone   ${Credentials[0]}
