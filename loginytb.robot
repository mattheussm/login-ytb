***Settings***
Library     SeleniumLibrary

***Variables***
${url}      https://youtube.com/
${email}            joaotestauto@gmail.com
${password}         testeautomacao@2

***Keywords***
Login With
    [Arguments]     ${email}      
    Input Text      xpath=//input[@id="identifierId"]        ${email}
   
Login With Password
    [Arguments]     ${password}
    Input Text      xpath=//input[@name="Passwd"]         ${password}

***Test Cases***
Should return login click
        [Tags]          click_login
    Open Browser        ${url}        chrome
    Click Element       xpath=//div[@id="buttons"]/ytd-button-renderer/yt-button-shape/a        
    Page Should Contain      Fazer login

Insert the email and press next
         [Tags]          insert_email  
    Login With          ${email}
    Click Element       xpath=//div[@id="identifierNext"]
    Wait Until Element Is Visible          xpath=//input[@name="Passwd"]       10
   
Insert password and press next
        [Tags]                  insert_password
    Login With Password     ${password}
    Click Element           xpath=//div[@id="passwordNext"]
    Sleep               10