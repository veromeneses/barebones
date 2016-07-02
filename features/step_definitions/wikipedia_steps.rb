Given(/^I visit the Wikipedia homepage$/) do
  visit WikipediaHome
end

Then(/^the page title should be "([^"]*)"$/) do |title|
  expect(on(WikipediaHome).title).to eq(title)
end

When(/^I search for "([^"]*)"$/) do |search_term|
  on(WikipediaHome).search(search_term)
end

Then(/^I should see a suggestion for the search term "([^"]*)"$/) do |suggested_term|
  expect(on(WikipediaSearchResults).did_you_mean).to eq("Did you mean: #{suggested_term}")
end

When(/^I accept this suggestion$/) do
  on(WikipediaSearchResults).goto_dym_suggestion
end

Then(/^I should see (\d+) search results for the term "([^"]*)"$/) do |number, suggested_term|
  expect(on(WikipediaSearchResults).count_search_results).to eq(number.to_i)
end

When(/^I visit the first search result$/) do
  on(WikipediaSearchResults).visit_first_search_result
end

Then(/^the article should have a title and a table of contents$/) do
  expect(on(WikipediaArticlePage).has_title?).to be true
  expect(on(WikipediaArticlePage).has_toc?).to be true
end

Given(/^I use Wikipedia's random feature(?: again)?$/) do
  visit WikipediaRandom
end

Then(/^I should be shown an article$/) do
  @random_title = on(WikipediaRandom).get_random_article_title
end

Then(/^I should see a different article$/) do
  expect(on(WikipediaRandom).get_random_article_title).not_to eq(@random_title)
end
