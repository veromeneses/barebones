Feature: Responsive 'Buy Currency' slide

Scenario: User is able to find the way to buy currency on a small screen
  Given I visit the Travelex website
  And I'm using a mobile device
  When I view the main the site's features
  Then I should see a slider
  When I swipe to the left twice
  Then I should find the Buy Currency feature
