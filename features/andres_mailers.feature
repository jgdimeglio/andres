Feature: Andres Mailers
  I want to publish my event
  In order to get my events

  Background:
	Given I am logged
  		And the user registered "1@test.com"
		And the user registered "2@test.com"
		And the user registered "3@test.com"


  Scenario: Send a notification
        Given "1@test.com" user has an event to be reported today
        	When notifications are sent
	Then "1@test.com" user should receive an email

 
  Scenario: send multiple notifications
        Given "1@test.com" user has an event to be reported today
		And "2@test.com" user has an event to be reported today
		And "3@test.com" user has an event to be reported today
        	When notifications are sent
	Then "1@test.com" user should receive an email
        	And "2@test.com" user should receive an email
		And "3@test.com" user should receive an email
   

    
  


 

   
