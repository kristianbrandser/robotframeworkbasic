*** Settings ***
Resource  ../Resources/defaultsettings.resource

Test Setup      Log To Console    New test is starting
Test Teardown   Log To Console    Test ends
Force Tags      regression
Default Tags    TBD

*** Variables ***

${login_status}       false
${username}           kristianbrandser
${password}           s3cr3t
${LibraryUrl}         http://robot.dev.knowit.fi:8080/TheLibrary/
${TEARDOWN}           True

*** Test Cases ***

Exercise 5
    [Documentation]   Open The Library application
    ...               Go to the login page
    ...               If the login button exists; login
    ...               If the login buttond doesn´t exist; write to the log and go to book search
    [Tags]            Knowittestschool  assignement5

    [Setup]           Open Browser  ${LibraryUrl}  browser=chrome

    Navigate to       login_user

    [Teardown]        Run Keyword If  ${TEARDOWN}  Close Browser


*** Keywords ***

Navigate to
    [Arguments]       ${menuitem}
    [Documentation]   Clicks on menuitem with id $argument
    Log To Console    Navigating to ${menuitem}
    Click Link        xpath=//*[@id="${menuitem}"]
    ${login_status}=  Run Keyword And Return Status     Enter the library  ${username}  ${password}

Enter the library
    [Documentation]   Attempts to log into the Library with the passed arguments
    [Arguments]       ${user}  ${pass}
