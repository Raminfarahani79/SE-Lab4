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

 Scenario Outline: square root and division
  Given Two input values, <a> and <b>
  When I calculate the square root of the division of the numbers
  Then I expect the result <result>
  Examples:
   | a   | b  | result |
   | 4   | 1  | 2      |
   | 36  | 4  | 3      |
   | -36 | -4 | 3      |