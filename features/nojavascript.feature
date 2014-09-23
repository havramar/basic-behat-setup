Feature: Functional testing without JS
  In order to test package
  As a developer
  I need to browse www pages which doesn't require javascript

  Scenario: Searching for a page that does exist
    Given I am on "http://wikipedia.com/wiki/Main_Page"
    When I fill in "search" with "Behavior Driven Development"
    And I press "searchButton"
    Then I should see "agile software development"
