*** Settings ***
Library         SeleniumLibrary

*** Variables ***

*** Keywords ***
Speak Hello
    [Documentation]   Keyword Speak Hello prints "Hello $argument!" to console
    [Arguments]  ${Word}=HelloWorld
    Log To Console    Hello ${Word} !
