require 'watir-webdriver'
require 'cucumber'
require 'page-object'
require 'page-object/page_factory'
require 'touch_action/watir-webdriver'
require_relative '../../lib/pages_require'

browser = Watir::Browser.new :firefox

World(PageObject::PageFactory)

Before do
  @browser = browser
  @browser.window.maximize
end

at_exit do
  browser.close
end
