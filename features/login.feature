Feature: Log in page
	As a site manager of facebook, 
	I want the login page should prompt new users to sign up 
	so I can increase the number of active users.

Scenario: Must be logged out to create an account
	Given I am on the Facebook home page
	Then I should see: "Signup"
	But should not see: "Profile"

Scenario: Creating an account with no information
	Given I am on the Facebook home page
	And I go to the account signup page
	And I press "submit"
	Then I should see a flash with "Form is invalid"
	
Scenario: Creating an account
	Given I am on the Facebook home page
	And I go to the account signup page
	And fill in "user_username" with "admin"
	And fill in "user_email" with "ad@min.com"
	And fill in "user_password" with "admin1"
	And fill in "user_password_confirmation" with "admin1"
	Then I should see a flash with "You Signed up successfully"

Scenario: Logging in to an account
	Given I am on the Facebook home page
	And I fill in "username_or_email" with "123"
	And I fill in "login_password" with "123456" 
	Then I should see: "123 Home"
