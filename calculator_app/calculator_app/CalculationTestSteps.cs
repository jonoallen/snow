using FluentAssertions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TechTalk.SpecFlow;

namespace calculator_app
{
    [Binding]
    public sealed class CalculationTestSteps
    {
        private int actualResult;

        [Given(@"I have entered (.*) into the calculator")]
        public void GivenIHaveEnteredIntoTheCalculator(int number)
        {
            Calculator.EnterNumber(number);
        }

        [When("I press add")]
        public void WhenIPressAdd()
        {
            actualResult = Calculator.Add();            
        }

        [When(@"I press subtract")]
        public void WhenIPressSubtract()
        {
            actualResult = Calculator.Subtract();
        }


        [Then("the result should be (.*) on the screen")]
        public void ThenTheResultShouldBe(int expectedResult)
        {
            actualResult.Should().Be(expectedResult);
        }
    }
}
