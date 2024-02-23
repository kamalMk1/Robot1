*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MyfirstCase
  Open Browser    https://google.com    chrome
  Input Text    name=q    kamal Mikharbach    
  Set Selenium Implicit Wait    5
  Click Button    name=btnK      
  sleep   19s   
  Close Browser
