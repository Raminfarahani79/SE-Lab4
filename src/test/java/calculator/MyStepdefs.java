package calculator;

import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
public class MyStepdefs {
    private Calculator calculator;
    private int value1;
    private int value2;
    private int result;
    @Before
    public void before() {
        calculator = new Calculator();
    }

    @Given("^Two input values, (-?\\d+) and (-?\\d+)$")
    public void twoInputValuesAnd(int arg0, int arg1) {
        value1 = arg0;
        value2 = arg1;
    }

    @When("^I add the two values$")
    public void iAddTheTwoValues() {
        result = calculator.add(value1, value2);
        System.out.print(result);
    }
    @Then("^I expect the result (\\d+)$")
    public void iExpectTheResult(int arg0) {
        Assert.assertEquals(arg0, result);
    }

    @When("I divide the two values")
    public void iDivideTheTwoValues() {
        result = calculator.divide(value1, value2);
        System.out.print(result);
    }

    @Given("a value {int}")
    public void aValue(int arg0) {
        value1 = arg0;
    }

    @When("I calculate the square root of the value")
    public void iCalculateTheSquareRootOfTheValue() {
        result = calculator.sqrt(value1);
        System.out.print(result);
    }

    @When("I calculate the square root of the division of the numbers")
    public void iCalculateTheSquareRootOfTheDivisionOfTheNumbers() {
        result = calculator.sqrt(calculator.divide(value1, value2));
        System.out.print(result);
    }
}