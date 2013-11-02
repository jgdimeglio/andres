Feature: Events
  I want to publish my event
  In order to get my events

  Background:
  	Given I am logged

  Scenario: Create new event
    Given I access the new event page
    When I fill the start date with "11-4-2013"
		And confirm the new event    
    Then I should see "Event created"	

  

  Scenario: Events list
    Given I have an event created with date "1-1-2013"
    	And I access the my events page
    Then I should see "1-1-2013"
	And I should see "12-1-2013"
	And I should see "16-1-2013"
	And I should see "28-1-2013"

  Scenario: Events list , with change of year
    Given I have an event created with date "21-12-2013"
        And I access the my events page
    Then I should see "21-12-2013"
	And I should see "1-1-2014"
	And I should see "5-1-2014"
	And I should see "17-1-2014"

  Scenario: Events list , with change of month
    Given I have an event created with date "16-5-2013"
   	 And I access the my events page
    Then I should see "16-5-2013"
	And I should see "27-5-2013"
	And I should see "31-5-2013"
        And I should see "12-6-2013"

  Scenario: Events list , two events
    Given I have an event created with date "1-5-2013"
    Given I have an event created with date "1-7-2013"
        And I access the my events page
    Then I should see "1-5-2013"
	And I should see "1-7-2013"


 

   
