*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser        ${base_url}     ${browser_type}
Test Teardown   Close Browser

*** Variables ***
${base_url}        https://demoqa.com/radio-button       
${browser_type}     Chrome

*** Test Cases ***
I click radio button in impressive data
   # Open Browser                    https://www.google.com/     Chrome
    Maximize Browser Window
    # Input Text              //input[@class="form-control"]    Fais Alkurnis
    Click Element                //label[@for="impressiveRadio"]  
      Sleep                           3s
    Element Should Be Visible      //p[@class="mt-3"]
    Sleep                           3s
    Element Should Contain       //span[@class="text-success"]    Impressive 
      Sleep                           5s 

*** Test Cases ***
I click radio button in Yes data
   # Open Browser                    https://www.google.com/     Chrome
    Maximize Browser Window
    # Input Text              //input[@class="form-control"]    Fais Alkurnis
    Click Element                //label[@for="yesRadio"]  
      Sleep                           3s
    Element Should Be Visible      //p[@class="mt-3"]
    Sleep                           3s
    Element Should Contain       //span[@class="text-success"]    Yes 
      Sleep                           5s 