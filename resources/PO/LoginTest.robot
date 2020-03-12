*** Settings ***
Documentation  This is the sub test case
...
Resource          ../../resources/resource.robot


*** Variables ***
${INPUT USERNAME} =   xpath=//*[@id="txtUsername"]
${INPUT PASSWORD} =   xpath=//*[@id="txtPassword"]

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${DC URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}

Browser is Opened to Login Page
    Title Should Be    Champions | Before and After School Programs & Out-of-School Time Programs

UserName
    [Arguments]     ${Credentials}
    Input Text   ${INPUT USERNAME}  ${Credentials[0]}

Password
    [Arguments]     ${Credentials}
    Input Text   ${INPUT PASSWORD}  ${Credentials[1]}

Submit credentials
    click button  LOG IN

User Dashboard Page Should Be Displayed
    title should be  KLC | OAM

