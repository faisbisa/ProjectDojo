*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser        ${base_url}     ${browser_type}
Test Teardown   Close Browser

*** Variables ***
${base_url}        http://uitestingplayground.com/textinput       
${browser_type}     Chrome

*** Test Cases ***
I am typing My Name in the field
   # Open Browser                    https://www.google.com/     Chrome
    Maximize Browser Window
    Input Text              //input[@class="form-control"]    Fais Alkurnis
    Click Element           //button[@class="btn btn-primary"]  
    Sleep                           5s    
    Element Should Contain    //button[@class="btn btn-primary"]     Fais Alkurnis fais
