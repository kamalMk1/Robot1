*** Settings ***
Library    SeleniumLibrary
Default Tags    Kamal
*** Variables ***
${BROWSER}    Chrome
${BASE_URL}    https://the-internet.herokuapp.com
${USERNAME}    tomsmith
${PASSWORD}    SuperSecretPassword!


*** Test Cases ***
MyFirstTest
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    8
    Input Text    name=q    kamal Mikharbach     
     Press Keys    name=q       ENTER
    # Click Button    name=btnK
    # Execute JavaScript    document.querySelector('input[name="btnK"]').click();


    sleep    30s 
    Close Browser

# SampleLoginTest
    # [Documentation]    this is a sample login test
    # Open Browser    
    # Input Text    id=    text  



Login Testa
    [tags]    kuber
    Open Browser    ${BASE_URL}/login    ${BROWSER}
    Set Browser Implicit Wait    10
    LogingKeyw
    Wait Until Page Contains Element    css=.flash.success
    sleep    20s
    Close Browser
    Log    this test is completed and executed by %username%
    
*** Keywords ***
LogingKeyw
     Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    xpath=//button[@type='submit']
 