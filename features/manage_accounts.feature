Feature: Account
	In order to login
	As a user
	I want to manage my account

	Scenario: Create a new account
		Given I follow "Create a account"
		And I enter my account details
		When I press "Create an account"
		Then I should see "Account succesfully created"
		And my account should exist
