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

	Scenario: Login to my account
		Given I am a registered user
		And I am on the home page
		When I follow "Sign in"
		And I enter my login details
		Then I should see "Signed in successfully."
		And I should see my email address

	Scenario: Logout from my account
		Given I am a registered user
		And I am logged in
		When I follow "Sign out"
		Then I should see "Signed out successfully."
		And I should see "Sign in"

	Scenario: Edit my account
	Scenario: Retrieve my account in case of forgotten password

