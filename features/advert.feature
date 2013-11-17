Feature: Advert
  I want to see an advertising
  

  Background:
    Given An advertising exists "oneText"
	And An advertising exists "twoText"
	And An advertising exists "threeText"
	And I am on the application page

  Scenario:  See an advertising
	Given the advertising strategy will show "oneText"
	Then I should see "oneText"


  Scenario: Not display advertising, all disabled
	Given all ads are disabled
	Then I should not see "oneText"
		And I should not see "twoText" 
		And I should not see "threeText" 
