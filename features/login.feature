Feature: User has to have a login in order to read any content

Background: data for users has been added to the database

  Given the following users exist:

  | name     | firstname | lastname | provider|
  | rex	     | rex       | ren      | twitter |	
  | akwong   | andrew    | kwong    | twitter |

Scenario: new user
	Given my username is "ben"
	And I am on the SportsmenScope homepage
	Then I should see "Log in with your Twitter account"
	And I should not see "Welcome"

Scenario: after logged in page
	Given I am logged in as "rex"
	And I am on the SportsmenScope homepage
	Then I should see "Welcome"
	And I should not see "Log in with your Twitter account"
Scenario: after logged in action
	Given I am logged in as "rex"
	And I click Rate an Athlete
	Then I should be on the Rate an Athlete page