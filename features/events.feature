Feature: Events
  I want to publish my event
  In order to get my events

  Background:
  	Given I am logged


  Scenario: See comment created
    Given I have an event created with comment "this a comment"
    		And I access the my events page
		And I click the button comment  
    Then I should see "this a comment"


 Scenario: Create new event with comment
    Given I access the new event page
    When I fill the start date with "11-4-2013"
		And I fill the commetn with "A comment"
		And confirm the new event    
    Then I should see "Event created"

  Scenario: Create new event
    Given I access the new event page
    When I fill the start date with "11-4-2013"
		And confirm the new event    
    Then I should see "Event created"	

  Scenario: Create not event ,invalid day
    Given I access the new event page
    When I fill the start date with "1123-4-2013"
		And confirm the new event    
    Then I should see "Invalid event"

  Scenario: Create not event ,invalid month
    Given I access the new event page
    When I fill the start date with "11-13-2013"
		And confirm the new event    
    Then I should see "Invalid event"

  

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

   

    
  


 

   
