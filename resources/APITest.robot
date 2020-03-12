*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library            RequestsLibrary
#Library             JsonLibrary
Library             OperatingSystem

#robot -d results APITest.robot

*** Variables ***
${HOST} =  https://api.deutschebahn.com
${URI}   =   /freeplan/v1/location/F
${ACCEPT} =     appicaiton/jason

*** Keywords ***

*** Test Cases ***
Get Requests
    ${headers1}=     create dictionary      Authorization=ccece5ff3fa5fec76ccd1b0ef6f40e51        Content-Type=application/json      Accept=appicaiton/jason
    ${data1}=     create dictionary       data={stationWithEvaId(evaId:8000105){name}}
    Create Session	getsched	https://api.deutschebahn.com
    ${resp1} =   Get Request	getsched    /freeplan/v1/location/F     headers=${headers1}
    ${resp2} =   post request  	getsched    /freeplan/v1/graphql     headers=${headers1}
    Should Be Equal As Strings	${resp1.status_code}	200
    ${list1} =  	convert to string    ${re1.json()}
    log  ${list1}
    log to console  ${list1}
    Create File     results.json      ${list1}      encoding=UTF-8
    ${list2} =  	convert to string    ${resp2.json()}
    log  ${list2}
    #log to console  ${list2}
    #Create File     resultsjason1.txt      ${list2}      encoding=UTF-8

    #${values1}=	Get Value From Json	 ${resp1.json()}   $
    #log     ${values1}
    #log to console  ${values1}
    #Create File     resultsjson.txt      ${values1}      encoding=UTF-8

