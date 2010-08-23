Feature: Car
	In order to track the cost of my Car
	As a registered user
	I want to create and manage cars

	Scenario: Create a new car 
		Given I am logged in 
		When I follow "Create new car"
		And I enter the details of my Car
		When I click "Create car"
		Then I should see "Car successfully created"
		And my car should be created
	
	Scenario: Edit an existing Car
		Given I am logged in
		And I have created A Car
		When I edit this Car
		And I change the brand to "BMW"
		And I click "Update car"
		Then I should see "Car successfully updated"
		And the car should have "BMW" as brand

	Scenario: Destroy a Car
		Given I am logged in 
		And I have created A Car
		When I go to edit this Car
		And I click "Delete car"
		Then I should see "Car successfully deleted"
		And The car should be deleted
