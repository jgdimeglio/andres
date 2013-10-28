Feature: Events
  I want to publish my event
  In order to get my events

  Scenario: Create new event
    Given I access the new event page
    When I fill the finicio with "1/11/2013"
		And confirm the new event    
    Then I should see "Event created"	

 

   
