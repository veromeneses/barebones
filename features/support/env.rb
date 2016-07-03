require 'watir-webdriver'
require 'cucumber'
require 'page-object'
require 'page-object/page_factory'
require 'touch_action/watir-webdriver'

require_relative '../wikipedia_pages/wikipedia_home'
require_relative '../wikipedia_pages/wikipedia_search_results'
require_relative '../wikipedia_pages/wikipedia_article_page'
require_relative '../wikipedia_pages/wikipedia_random'
require_relative '../travelex_pages/travelex_homepage'

browser = Watir::Browser.new :firefox

World(PageObject::PageFactory)

Before do
  @browser = browser
  @browser.window.maximize
end

at_exit do
  browser.close
end
