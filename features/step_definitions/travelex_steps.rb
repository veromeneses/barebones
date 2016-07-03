Given(/^I visit the Travelex website on a mobile device$/) do
  @browser.window.resize_to(550, 550)
  visit TravelexHomepage
end

When(/^I view the main the site's features$/) do
  on(TravelexHomepage).scroll_down_to_main_features
end

Then(/^I should be able to find the "([^"]*)" feature$/) do |feature_name|
  expect(on(TravelexHomepage).swipe_to_item(feature_name)).to eq feature_name
end
