Feature: Car
	In order to track the cost of my car
	As a registered user
	I want to create and manage cars

	Scenario: Create a new car
		Given I am a registered user
		And I am logged in
		When I follow "Create new car"
		And I enter the details of my car
		When I press "Create Car"
		Then I should see "Car was successfully created"
		And my car should be created

	Scenario: Edit an existing Car
		Given I am a registered user
		And I am logged in
		And I have created a car
		When I edit this car
		And I change the brand to "BMW"
		And I press "Update Car"
		Then I should see "Car was successfully updated"
		And the car should have "BMW" as brand
	
	Scenario: Destroy a Car
		Given I am a registered user
		And I am logged in
		And I have created a car
		When I edit this car
		And I follow "Delete car"
		Then I should see "Car was successfully deleted"
		And The car should be deleted
