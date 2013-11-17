Feature: Admin
  I want to create advertising
  I want to show advertising
  I want to edit advertising


  Background:
  	Given there is a registered administrator
		And I am logged as admin

  Scenario: Login admin
	Given I access the home page
        	Then I should see "Advertising"	
		Then I should see "New advertising"


 Scenario: Remove advertising
	Given I access the advertising show page
		And I have created an advertisement
	When confirm delete
	Then I should see "Advertising successfully deleted"


 Scenario: Edit correctly an advertisement
	Given I access the home page
		And I have created an advertisement
	When confirm Edit
           	And I fill the text with "content text"
		And I fill the enabled with "No"
		And confirm the update advert
	Then I should see "content text"
		And I should see "advertising"	
		And I should see "No"	
		And I should see "Advertising updated"

 Scenario: Do not edit without completing the field title
	Given I access the home page
		And I have created an advertisement
	When confirm Edit
		And I fill the title with ""
		And confirm the update advert
	Then I should see "All fields are mandatory"

 Scenario: Do not edit without completing the field text
	Given I access the home page
		And I have created an advertisement
	When confirm Edit
		And I fill the text with ""
		And confirm the update advert
	Then I should see "All fields are mandatory"
		

  Scenario: create publicity correctly
	Given I access the advertising new page
	When I fill the title with "advertising"
		And I fill the text with "content"
		And confirm the new advert
	Then I should see "content"
		And I should see "advertising"	
		And I should see "Yes"	
		And I should see "Advertising created"

  Scenario: Not create untitled advertising
	Given I access the advertising new page
	When I fill the text with "content"
		And confirm the new advert
	Then I should see "All fields are mandatory"

  Scenario: Not create publicity without text
	Given I access the advertising new page
	When I fill the title with "advertising"
		And confirm the new advert
	Then I should see "All fields are mandatory"

  




		
