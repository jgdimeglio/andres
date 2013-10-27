Feature: Users
  

  

  Scenario: Create new user
    Given I access the new user page
    When I fill the name with "Pedro"
		And I fill the email with "pedro@test.com"
		And I fill the password with "Test1234"
		And I fill the password_confirmation with "Test1234"
		And confirm the new user    
    Then I should see "User created"	

  Scenario: login user
    Given I access the login user page
	And I fill the email with "prueba@test.com"
    	And I fill the password with "Test1234"
	And confirm the login user 
    Then I should see "prueba@test.com"

    

   
