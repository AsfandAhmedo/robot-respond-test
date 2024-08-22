# Demo for respond.io (Login)

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    https://app.respond.io/user/login
${Email_Box}    //input[@id='input-7']
${Password_Box}    //input[@id='input-9']
${Valid_Email}    ahmadahmad205601@gmail.com 
${Valid_Password}    Malik@205601
${Login_Button}    //button[@type='submit']
${Login_Profile_Verification}    //span[@class='dls-txt-h5 dls-text-text-primary']


*** Test Cases ***
login with Valid Credentials
    Open Browser    ${URL}    chrome
    Wait Until Element Is Visible    ${Email_Box}
    Input Text    ${Email_Box}    ${Valid_Email}
    Input Text    ${Password_Box}    ${Valid_Password}
    Click Button    ${Login_Button}
    Wait Until Element Is Visible    ${Login_Profile_Verification}
    
