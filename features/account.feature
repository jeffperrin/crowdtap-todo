Feature: Account Creation
  Scenario: An un-authenticated user accessing the todo list
    When I go to the home page
    Then I should see "Create an account"
    
  Scenario: A user should be able to create an account
    When I go to the account creation page
    And I fill in "Email" with "jeffperrin@gmail.com"
    And I press "Login or create a new account"
    Then I should see "Welcome jeffperrin@gmail.com!"
    And I should see "Your todos"
    
  Scenario: A user should be able to log back in
    Given a user logged in as "jeffperrin@gmail.com"
    When I go to the todo page
    And I fill in "Title" with "This is my todo"
    And I press "Create"
    And I go to the account creation page
    And I fill in "Email" with "jeffperrin@gmail.com"
    And I press "Login or create a new account"
    Then I should see "This is my todo"