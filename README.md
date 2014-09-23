basic-behat-3-setup
===================

Combination of [Behat 3.*](https://github.com/Behat/Behat) with [Mink](https://github.com/Behat/Mink) ready for use for easier web application testing.
Packages includes also [Behatch](https://github.com/sanpii/behatch-contexts) which provides extra, ready to use features (enough to write tests without coding).

# Installation

```
$ git clone https://github.com/havramar/basic-behat-3-setup
$ cd basic-behat-3-setup
$ curl -s http://getcomposer.org/installer | php
$ php composer.phar install
$ vendor/bin/behat
```

Download selenium2 server ([http://seleniumhq.org/download/](http://seleniumhq.org/download/)) and start it:

```
$ java -jar selenium-server-standalone-2.24.1.jar
```

# Examples

## Testing with javascript required

Requires selenium and firefox (slow).

```
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
    Then I save a screenshot in yahoo.png
```

## Testing pages without javascript 

Runs in console only (very fast).

```
Feature: Functional testing without JS
  In order to test package
  As a developer
  I need to browse www pages which doesn't require javascript

  Scenario: Searching for a page that does exist
    Given I am on "http://wikipedia.com/wiki/Main_Page"
    When I fill in "search" with "Behavior Driven Development"
    And I press "searchButton"
    Then I should see "agile software development"
```

# Ready to use features

Hidden json, rest, systme, table, xml extensions. Uncomment them in [behat.yml](behat.yml) to get full list.

```
$ vendor/bin/behat -dl
default | Given /^(?:|I )am on (?:|the )homepage$/
default |  When /^(?:|I )go to (?:|the )homepage$/
default | Given /^(?:|I )am on "(?P<page>[^"]+)"$/
default |  When /^(?:|I )go to "(?P<page>[^"]+)"$/
default |  When /^(?:|I )reload the page$/
default |  When /^(?:|I )move backward one page$/
default |  When /^(?:|I )move forward one page$/
default |  When /^(?:|I )press "(?P<button>(?:[^"]|\\")*)"$/
default |  When /^(?:|I )follow "(?P<link>(?:[^"]|\\")*)"$/
default |  When /^(?:|I )fill in "(?P<field>(?:[^"]|\\")*)" with "(?P<value>(?:[^"]|\\")*)"$/
default |  When /^(?:|I )fill in "(?P<field>(?:[^"]|\\")*)" with:$/
default |  When /^(?:|I )fill in "(?P<value>(?:[^"]|\\")*)" for "(?P<field>(?:[^"]|\\")*)"$/
default |  When /^(?:|I )fill in the following:$/
default |  When /^(?:|I )select "(?P<option>(?:[^"]|\\")*)" from "(?P<select>(?:[^"]|\\")*)"$/
default |  When /^(?:|I )additionally select "(?P<option>(?:[^"]|\\")*)" from "(?P<select>(?:[^"]|\\")*)"$/
default |  When /^(?:|I )check "(?P<option>(?:[^"]|\\")*)"$/
default |  When /^(?:|I )uncheck "(?P<option>(?:[^"]|\\")*)"$/
default |  When /^(?:|I )attach the file "(?P<path>[^"]*)" to "(?P<field>(?:[^"]|\\")*)"$/
default |  Then /^(?:|I )should be on "(?P<page>[^"]+)"$/
default |  Then /^(?:|I )should be on (?:|the )homepage$/
default |  Then /^the (?i)url(?-i) should match (?P<pattern>"(?:[^"]|\\")*")$/
default |  Then /^the response status code should be (?P<code>\d+)$/
default |  Then /^the response status code should not be (?P<code>\d+)$/
default |  Then /^(?:|I )should see "(?P<text>(?:[^"]|\\")*)"$/
default |  Then /^(?:|I )should not see "(?P<text>(?:[^"]|\\")*)"$/
default |  Then /^(?:|I )should see text matching (?P<pattern>"(?:[^"]|\\")*")$/
default |  Then /^(?:|I )should not see text matching (?P<pattern>"(?:[^"]|\\")*")$/
default |  Then /^the response should contain "(?P<text>(?:[^"]|\\")*)"$/
default |  Then /^the response should not contain "(?P<text>(?:[^"]|\\")*)"$/
default |  Then /^(?:|I )should see "(?P<text>(?:[^"]|\\")*)" in the "(?P<element>[^"]*)" element$/
default |  Then /^(?:|I )should not see "(?P<text>(?:[^"]|\\")*)" in the "(?P<element>[^"]*)" element$/
default |  Then /^the "(?P<element>[^"]*)" element should contain "(?P<value>(?:[^"]|\\")*)"$/
default |  Then /^the "(?P<element>[^"]*)" element should not contain "(?P<value>(?:[^"]|\\")*)"$/
default |  Then /^(?:|I )should see an? "(?P<element>[^"]*)" element$/
default |  Then /^(?:|I )should not see an? "(?P<element>[^"]*)" element$/
default |  Then /^the "(?P<field>(?:[^"]|\\")*)" field should contain "(?P<value>(?:[^"]|\\")*)"$/
default |  Then /^the "(?P<field>(?:[^"]|\\")*)" field should not contain "(?P<value>(?:[^"]|\\")*)"$/
default |  Then /^the "(?P<checkbox>(?:[^"]|\\")*)" checkbox should be checked$/
default |  Then /^the checkbox "(?P<checkbox>(?:[^"]|\\")*)" (?:is|should be) checked$/
default |  Then /^the "(?P<checkbox>(?:[^"]|\\")*)" checkbox should not be checked$/
default |  Then /^the checkbox "(?P<checkbox>(?:[^"]|\\")*)" should (?:be unchecked|not be checked)$/
default |  Then /^the checkbox "(?P<checkbox>(?:[^"]|\\")*)" is (?:unchecked|not checked)$/
default |  Then /^(?:|I )should see (?P<num>\d+) "(?P<element>[^"]*)" elements?$/
default |  Then /^print current URL$/
default |  Then /^print last response$/
default |  Then /^show last response$/
default |  When I set basic authentication with :user and :password
default | Given (I )am on url composed by:
default |  When (I )click on the :index :element element
default |  When (I )follow the :index :link link
default |  When (I )fill in :field with the current date
default |  When (I )fill in :field with the current date and modifier :modifier
default |  When (I )hover :element
default |  When (I )save the value of :field in the :parameter parameter
default |  Then (I )wait :count second(s) until I see :text
default |  Then (I )wait until I see :text
default |  Then (I )wait :count second(s) until I see :text in the :element element
default |  Then (I )wait :count second(s)
default |  Then (I )wait until I see :text in the :element element
default |  Then (I )wait for :element element
default |  Then (I )wait :count second(s) for :element element
default |  Then /^(?:|I )should see (?P<count>\d+) "(?P<element>[^"]*)" in the (?P<index>\d+)(?:st|nd|rd|th) "(?P<parent>[^"]*)"$/
default |  Then (I )should see less than :count :element in the :index :parent
default |  Then (I )should see more than :count :element in the :index :parent
default |  Then the element :element should be disabled
default |  Then the element :element should be enabled
default |  Then the :select select box should contain :option
default |  Then the :select select box should not contain :option
default |  Then the :element element should be visible
default |  Then the :element element should not be visible
default |  When (I )switch to iframe :name
default |  When (I )switch to frame :name
default |  When (I )switch to main frame
default |  Then (I )put a breakpoint
default |  When I save a screenshot in :filename
```
