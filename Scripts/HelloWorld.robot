*** Settings ***
Resource  ../Resources/defaultsettings.resource

Test Setup      Log To Console    New test is starting
Test Teardown   Log To Console    Test ends
Force Tags      regression
Default Tags    TBD

*** Variables ***

*** Test Cases ***
Open Google and do a search
    [Documentation]   My first Robot Framework Test case
    ...               Its a really good documentaiton
    ...               The best actually

    [Setup]           Open Browser  http://www.google.com  browser=chrome
    [Tags]            Knowittestschool
    
    Input Text        name=q  robot framework

    #This is a comment
    Click Button      name=btnK
    #Sleep  3

    [Teardown]        Close Browser

Testcase HelloWorld
    [Tags]            HelloWorldTests  assignement3
    #Log to console    This logtext should show on console - HelloWorld
    #Log               Log message: "HelloWorld"
    Speak Hello  my beutiful WORLD

*** Keywords ***
