*** Settings ***
Documentation       This test validates the parent Acount

Library    ../../libs/phone.py

Resource        ../../data/InputData.robot

*** Variables ***
${FIRST NAME} =     xpath=//*[@id="ctl08_txtPrimaryContactFirstName"]
${LAST NAME} =     xpath=//*[@id="ctl08_txtPrimaryContactLastName"]
${EMAIL} =     xpath=//*[@id="ctl08_txtPrimaryContactHomeEmail"]
${ADDRESS1} =     xpath=//*[@id="ctl08_txtPrimaryContactAddress1"]
${CITY} =     xpath=//*[@id="ctl08_txtPrimaryContactCity"]
${STATE} =      xpath=//*[@id="ctl08_ddlPrimaryContactState"]
${ZIP} =     xpath=//*[@id="ctl08_txtPrimaryContactZip"]
${PHONE} =     xpath=//*[@id="ctl08_txtPrimaryContactHomePhone"]
${SISCO} =     xpath=//*[@id="txtNewSISO"]
${SendSICOEmail} =  //*[@id="ctl08_pnlContactDetails"]/div[2]/div[1]/div/div/label
${SaveNewContact} =  //*[@id="ctl08_imgContactSave"]

*** Keywords ***
Goto Account Page
        click link  My Account

Account Page Should be Displayed
    title should be  KLC | OAM

Goto Add Contact Page
    click button  Add Contact

Add Contact Page Should be Displayed
    ${response}    Get Text    xpath=//*[@id="ctl06_lblSubHeader"]
    Should Be Equal As Strings    ${response}     EMERGENCY CONTACT INFORMATION

FirstName
    [Arguments]     ${Credentials}
    Input Text   ${FIRST NAME}  ${Credentials[2]}

LastName
    [Arguments]     ${Credentials}
    Input Text   ${LAST NAME}  ${Credentials[3]}

Email
    [Arguments]     ${Credentials}
    Input Text   ${EMAIL}  ${Credentials[4]}

Address1
    [Arguments]     ${Credentials}
    Input Text   ${ADDRESS1}  ${Credentials[5]}

City
    [Arguments]     ${Credentials}
    input text   ${CITY}  ${Credentials[6]}

State
    select from list by label  ${STATE}  Oregon

Zip
    [Arguments]     ${Credentials}
    Input Text   ${ZIP}  ${Credentials[7]}

Phone
    [Arguments]     ${Credentials}
    press keys  ${PHONE}  SHIFT+TAB
    press keys  ${PHONE}  ${Credentials[8]}

SISCO
    [Arguments]     ${Credentials}
    Input Text   ${SISCO}  ${Credentials[9]}

Uncheck SISCO
    click element  ${SendSICOEmail}

Save Contact
    click button  ${SaveNewContact}

Assign Child
    ${response}    Get Text    xpath=//*[@id="ctl08_pnlStudentGrid"]/h3
    Should Be Equal As Strings    ${response}     Assign Children to this Emergency Contact

