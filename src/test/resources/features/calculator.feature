@tag
Feature: Calculator
 Scenario: add two numbers
  Given Two input values, 1 and 2
  When I add the two values
  Then I expect the result 3

 Scenario Outline: add two numbers
  Given Two input values, <first> and <second>
  When I add the two values
  Then I expect the result <result>
  Examples:
   | first | second | result |
   | -1    | 12     | 11     |
   | -1    | 6      | 5      |
   | 2     | -2     | 0      |

 Scenario: divide two numbers
  Given Two input values, 4 and 2
  When I divide the two values
  Then I expect the result 2

 Scenario Outline: divide two numbers
  Given Two input values, <first> and <second>
  When I divide the two values
  Then I expect the result <result>
  Examples:
   | first | second | result |
   | 12    | 6      | 2      |
   | -4    | -2     | 2      |
   | 0     | 1      | 0      |

 Scenario: square root of a number
  Given a value 4
  When I calculate the square root of the value
  Then I expect the result 2

 Scenario Outline: square root of a number
  Given a value <first>
  When I calculate the square root of the value
  Then I expect the result <result>
  Examples:
   | first | result |
   | 36    | 6      |
   | 16    | 4      |
   | 9     | 3      |

 Scenario Outline: square root and division
  Given Two input values, <a> and <b>
  When I calculate the square root of the division of the numbers
  Then I expect the result <result>
  Examples:
   | a   | b  | result |
   | 4   | 1  | 2      |
   | 36  | 4  | 3      |
   | -36 | -4 | 3      |