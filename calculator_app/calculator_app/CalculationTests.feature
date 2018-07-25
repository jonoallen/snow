Feature: CalculationTests
	In order to avoid silly mistakes
	As a calculator program user
	I want to be told the sum of two numbers

Scenario: Add two numbers
	Given I have entered 50 into the calculator
	And I have entered 70 into the calculator
	When I press add
	Then the result should be 120 on the screen

Scenario: Subtract two numbers
	Given I have entered 20 into the calculator
	And I have entered 10 into the calculator
	When I press subtract
	Then the result should be 10 on the screen
