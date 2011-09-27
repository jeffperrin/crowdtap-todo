Feature: Todo creation
  Scenario: An authenticated user should be able to add a todo
    Given a user logged in as "jeffperrin@gmail.com"
    When I go to the todo page
    And I fill in "Title" with "This is my todo"
    And I fill in "Description" with "I describe it here"
    And I press "Create"
    Then I should see "Todo was created"
    And I should see "This is my todo"
