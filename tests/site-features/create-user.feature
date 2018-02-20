Feature: Create a new user
  In order to make sure I can administer users
  As an administrator
  I need to be able create users

  @api
  Scenario: Create a user
    Given I am logged in as a user with the "administrator" role
      When I go to "/admin/people"
      Then I should see "Add user"
      When I follow "Add user"
      Then I should be on "/admin/people/create"
      When I fill in "mail" with "test@test.test"
      And I fill in "name" with "jkswoods"
      And I fill in "pass[pass1]" with "password"
      And I fill in "pass[pass2]" with "password"
      When I press "Create new account"
      Then I should be on "/admin/people/create"
      And I should see "Created a new user account for jkswoods. No email has been sent."