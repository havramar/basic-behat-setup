Feature: Functional testing with JS
  In order to test package
  As a developer
  I need to browse www pages which require javascript

  @javascript
  Scenario:
    Given I am on "http://yahoo.com"
    When I fill in "p" with "testing"
    When I press "search-submit"
    Then I should see "Get the latest updates on testing"
    Then I save a screenshot in "yahoo.png"
