Feature: Account
	In order to login
	As a user
	I want to manage my account

	Scenario: Create a new account
		Given I am on the home page
		And I follow "Sign up"
		When I enter my account details
		And I press "Create an account"
		Then I should see "Account succesfully created"
		And my account should exist
