Feature: Account Creation
  Scenario: An un-authenticated user accessing the todo list
    When I go to the home page
    Then I should see "Create an account"
    
  Scenario: A user should be able to create an account
    When I go to the account creation page
    And I fill in "Email" with "jeffperrin@gmail.com"
    And I press "Create Account"
    Then I should see "Account created!"
    And I should see "Your todos"