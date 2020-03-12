*** Settings ***
Documentation  Use this layer to get data from external files
Library  ../data/OpenCSV.py
Library  ../libs/GetSISCO.py

*** Keywords ***
Get CSV Data
    [Arguments]  ${FilePath}
    ${Data} =  read csv file  ${FilePath}
    [Return]  ${Data}

Get SISCO Code
    ${GET_SISCO_CODE} =  ${random_numbers}
    [Return]  ${random_numbers}
