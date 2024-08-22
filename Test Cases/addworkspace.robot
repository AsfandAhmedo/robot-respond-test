# Demo for respond.io (Add User)

*** Settings ***
Library  SeleniumLibrary
Library  String
Library    XML
Resource    utilities.robot

*** Keywords ***
login with Valid Credentials
    Wait Until Element Is Visible    ${Email_Box}
    Input Text    ${Email_Box}    ${Valid_Email}
    Input Text    ${Password_Box}    ${Valid_Password}
    Click Button    ${Login_Button}
Setup Browser
    Open Browser    ${URL}    chrome

*** Variables ***
${Profile_Button}    //div[@class='dls-text-text-selected dls-txt-button']
${Workspace_Action_Button}    //*[name()='path' and contains(@d,'M12,16A2,2')] 
${Workspace_Action_Delete}    //div[contains(@class, 'v-list-item-title') and text()='Delete'] 
${Workspace_Existing_Delete}    //span[@class='dls-txt-button dls-inline-flex dls-items-center'][normalize-space()='Delete']          
${Workspace_Button}    //span[normalize-space()='Workspaces']   
${Workspace_Box}    //input[@placeholder="My Testing Workspace"] 
${Add_Workspace_Button}    //div[@class='dls-shrink dls-me-12']//span[contains(text(),'Add Workspace')]            
${Workspace_New_Box}    //input[@placeholder="Name your workspace e.g. Customer Support"]  
${Submit_Workspace}    //button[@type='submit']    

*** Test Cases ***
Add workspace user flow
    Setup Browser
    login with Valid Credentials
    Sleep    5s
    Go To    https://app.respond.io/organization/241858/general
    Sleep    5s
    Scroll Element Into View    ${Workspace_Button}
    Click Element    ${Workspace_Button}
    Sleep    5s
    Click Element    ${Workspace_Action_Button}   
    Sleep    5s
    Click Element    ${Workspace_Action_Delete}     
    Click Element    ${Workspace_Box}
    Input Text    ${Workspace_Box}    My Testing Workspace
    Click Element    ${Workspace_Existing_Delete}    
    Click Element    ${Add_Workspace_Button}
    Click Element    ${Workspace_New_Box}
    Input Text    ${Workspace_New_Box}    My Testing Workspace
    Click Element    ${Submit_Workspace}    
    Sleep    5s
    Click Element    //span[contains(text(),'Invite Users')]

    





   