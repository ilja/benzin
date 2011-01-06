Feature: Fillings
  In order to track my gasoline usage
  As a car owner
  I want to track my fillings
  
  Scenario: Create a filling
    Given I am a registered user
		And I am logged in
    And I have created a car
    And I am on the page of my Audi
    When I follow "new filling"
    And I fill in the gasoline amount as "50" litres
    And I fill in the odometer count as "120000" kilometres
    And I fill in the cost as "75.50" euros
    And I press "Save filling"
   # Then I pause for a while
    #Then show me the page
    Then I should see "Filling was successfully saved"
    And I should see amount "50", cost "75.50" and kilometres "120000" in the list of fillings
    
  Scenario: show a filling
  Scenario: Edit a filling
  Scenario: Delete a filling
  

    