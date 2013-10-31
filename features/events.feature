Feature: Events
  I want to publish my event
  In order to get my events

  Background:
  	Given I am logged

  Scenario: Create new event
    Given I access the new event page
    When I fill the start date with "11/04/2013"
		And confirm the new event    
    Then I should see "Event created"	

  Scenario: Not create new event
    Given I access the new event page
    When I fill the start date with "mal format"
		And confirm the new event    
    Then I should see "Format invalid"

  Scenario: Events list
    Given I access the my events page
	And I have an event created with date "01/01/2013"
    Then I should see "01/01/2013"
	And I should see "12/01/2013"
	And I should see "16/01/2013"
	And I should see "28/01/2013"

  Scenario: Events list , with change of year
    Given I access the my events page
	And I have an event created with date "20/12/2013"
    Then I should see "20/12/2013"
	And I should see "01/01/2014"
	And I should see "03/01/2014"
	And I should see "15/01/2013"

  Scenario: Events list , with change of month
    Given I access the my events page
	And I have an event created with date "15/05/2013"
    Then I should see "15/05/2013"
	And I should see "27/01/2014"
	And I should see "31/01/2014"
	And I should see "12/01/2013"

 

   
