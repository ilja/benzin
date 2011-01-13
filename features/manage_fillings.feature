Feature: Fillings
  In order to track my gasoline usage
  As a car owner
  I want to track my fillings
       
  Scenario: Create a filling
    Given I visit the page of my car
    When I follow "new filling"
    And I fill in the gasoline amount as "50" litres
    And I fill in the odometer count as "120000" kilometres
    And I fill in the cost as "75.50" euros
    And I press "Save filling"
    Then I should see "Filling was successfully saved"
    And I should see amount "50", cost "75.50" and kilometres "120000" in the list of fillings
      
  Scenario: show a filling
    Given I visit the page of my car
    And I have added a filling
    When I should see this filling in the list of fillings
    
  Scenario: Edit a filling
    Given I visit the page of my car
    And I have added a filling
    When I edit this filling
    And I change amount to "30"
    And I press "Save filling"
    Then I should see "Filling was successfully updated"

  @wip
  Scenario: Delete a filling
    Given I visit the page of my car
    And I have added a filling
   # Then show me the page
    When I delete this filling
    Then I should see "Filling succesfully removed"
    And the list of fillings should be empty

  # Then I pause for a while
  # Then show me the page
    