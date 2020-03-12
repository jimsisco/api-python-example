*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        CHROME
${DELAY}          1
${CREDENTIALS_PATH_CSV} =  /Users/jamessiscaretti/Champions/data/testdata.csv
${DC URL}      https://connect.klcschoolpartnerships.com/