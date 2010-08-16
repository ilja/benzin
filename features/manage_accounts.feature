Feature: Account
	In order to login
	As a user
	I want to manage my account

	Scenario: Create a new account
		Given I am on the home page
		And I follow "Sign up"
		When I enter my account details
		And I press "Sign up"
		Then I should see "You have signed up successfully"
		And my account should exist
