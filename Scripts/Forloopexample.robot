*** Test Cases ***
Looptest
  [Tags]    Knowittestschool  forloopexample
  @{list}   Create List    1  2  3  4  5  9
  FOR  ${number}  IN  @{list}
    Log To Console   The number is: ${number}
  END

  FOR  ${index}  IN  RANGE  1  13  3
    Log To Console    The rangeindex is. ${index}
  END
