Feature: Users
  I want to create a user
  I want to login with my user


  Scenario: Create new user
    Given I access the new user page
    When I fill the name with "Pedro"
		And I fill the email with "pedro@test.com"
		And I fill the password with "Test1234"
		And I fill the password_confirmation with "Test1234"
		And confirm the new user    
    Then I should see "User created"	

  Scenario: Login user
    Given I access the login user page
	And I fill the email with "prueba@test.com"
    	And I fill the password with "Test1234"
	And confirm the login user 
    Then I should see "prueba@test.com"

   Scenario: Not login user, Invalid credentials
    Given I access the login user page
	And I fill the email with "emailNotExist@test.com"
    	And I fill the password with "Test1234"
	And confirm the login user 
    Then I should see "Invalid credentials"

   Scenario: Not create new user,password do not match
    Given I access the new user page
    When I fill the name with "Pedro"
		And I fill the email with "pedro.19@test.com"
		And I fill the password with "Test1234"
		And I fill the password_confirmation with "Test0000"
		And confirm the new user    
    Then I should see "Passwords do not match" 

    Scenario: Not create new user,the length of the password is less than 8
    Given I access the new user page
    When I fill the name with "Pedro"
		And I fill the email with "pedro.19@test.com"
		And I fill the password with "Test1"
		And I fill the password_confirmation with "Test1"
		And confirm the new user    
    Then I should see "All fields are mandatory" 

    Scenario: Not create new user,the password does not have uppercase
    Given I access the new user page
    When I fill the name with "Pedro"
		And I fill the email with "pedro.19@test.com"
		And I fill the password with "123456789"
		And I fill the password_confirmation with "123456789"
		And confirm the new user    
    Then I should see "All fields are mandatory" 

    Scenario: Not create new user,email in use
    Given I access the new user page
    When I fill the name with "Pedro"
		And I fill the email with "prueba@test.com"
		And I fill the password with "Test1234"
		And I fill the password_confirmation with "Test1234"
		And confirm the new user    
    Then I should see "Email in use"   

   
