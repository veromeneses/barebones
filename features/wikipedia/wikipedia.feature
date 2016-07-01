Feature: Checking Wikipedia homepage displays correctly
 In order to verify that the Wikipedia page has minimum features I need to make use of it
 as a Wikipedia user
 I want to verify that minimum features are there

  Scenario: User makes sure they're visiting wikipedia
    Given I visit the Wikipedia homepage
    Then the page title should be "Wikipedia"

  Scenario: User is presented with 'Did you mean?' and is able to follow the suggestion
    Given I visit the Wikipedia homepage
    When I search for "furry rabbits"
    Then I should see a suggestion for the term search "fury rabbits"
    When I accept this suggestion
    Then I should see 20 search results for the term "fury rabbits"
    When I visit the first search result
    Then the article should have a title and a table of contents

  @bonus
  Scenario: User can navigate to random article pages on Wikipedia
    Given I use Wikipedia's random feature
    Then I should be shown an article
    Given I use Wikipedia's random fetaure
    Then I should see a different article
