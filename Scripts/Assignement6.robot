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

Exercise 6
    [Documentation]   Open The Library application
    ...               Create a list variable that contains all links on the front page
    ...               Create a for loop that clicks all links
    [Tags]            Knowittestschool  assignement6

    [Setup]           Open Browser  ${LibraryUrl}  browser=chrome

    @{links}          Create List  Get List Items  //a

    FOR ${link} IN @{links}
      Click Link ${link}
      Log    Clicked ${link}
      Wait Until Page Loaded
      Log    Page loaded
      Navigate Back
    END


    Navigate to       login_user

    [Teardown]        Run Keyword If  ${TEARDOWN}  Close Browser


*** Keywords ***

Navigate to
    [Arguments]       ${menuitem}
    [Documentation]   Clicks on menuitem with id $argument
    Log To Console    Navigating to ${menuitem}
    Click Link        xpath=//*[@id="${menuitem}"]
