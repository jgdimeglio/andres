Feature: Admin
  I want to create advertising
  I want to show advertising


  Background:
  	Given there is a registered administrator
		And I am logged as admin

  Scenario: Login admin
	Given I access the home page
        	Then I should see "Advertising"	

   
