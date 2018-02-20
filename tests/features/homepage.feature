Feature: Homepage
  In order to make sure the site works
  As an anonymous user
  I need to be able access the homepage

  Scenario: Go to the homepage
    When I go to "/"
    Then I should see "Welcome to Drupal 8 Behat Test"
