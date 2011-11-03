Feature: User Management
  Scenario: I attempt to login
      When I go to the home page
      And I attempt to login:
        | username | password | stay_logged_in |
        | test     | test     | true           |
      And I press "Login"
      Then I should be logged in
      And I should see the private template