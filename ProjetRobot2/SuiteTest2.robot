*** Settings ***
Library      SeleniumLibrary   
   
*** Test Cases ***
SampleLoginTest2
    [Documentation]    un test de login tres simple
    Open Browser     ${URL}   chrome    
    Set Browser Implicit Wait    5
    LOGINKW1
   Sleep    2    
    Click Element    id=welcome
   Click Link     Logout 
   Sleep    2  
  Log To Console  ce test est effectue par %{username} sur %{os}
  Close Browser
   

    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com
*** Keywords ***
LOGINKW1
    Input Text    id=txtUsername        Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin    