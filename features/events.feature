Feature: Events
  I want to publish my event
  In order to get my events

  Background:
  	Given I am logged

  Scenario: Create new event
    Given I access the new event page
    When I fill the start date with "1/11/2013"
		And confirm the new event    
    Then I should see "Event created"	

 

   
