Feature: Advert
  I want to see an advertising
  

  Background:
    Given An advertising exists

  Scenario:  See an advertising
    Given I am on the application page
    When I see the advertising page
    Then I should see the advertising's text
