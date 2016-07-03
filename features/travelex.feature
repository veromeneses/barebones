@travelex @all
Feature: Responsive 'Buy Currency' slide
  In order have cash available when I go abroad
  As a traveller
  I want to find the option to buy currency on my mobile device

Scenario: User is able to find the way to buy currency on a small screen
  Given I visit the Travelex website on a mobile device
  When I view the main the site's features
  Then I should be able to find the "Buy currency" feature
