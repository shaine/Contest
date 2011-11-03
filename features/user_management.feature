Feature: User Management
  Scenario: I successfully login
      When I go to the home page
      And I am logged out
      And I attempt to login with:
        | username          | password | stay_logged_in |
        | test@test.com     | test     | true           |
      And I press "Login"
      Then show me the page
      And I should be logged in
      And I should see the private template