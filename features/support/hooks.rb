After do |scenario|
  # take_screenshot(scenario) if scenario.failed?
  if scenario.failed?
    Dir.mkdir('failure_images') unless File.directory? 'failure_images'
    image = "./failure_images/#{scenario.name}-#{Time.now}"
    @browser.screenshot.save(image)
    p "Failure image available: #{image}"
    embed(image, 'image/png')
  end
end

# def take_screenshot(scenario)
#   Dir.mkdir('failure_images') unless File.directory? 'failure_images'
#   image = "./failure_images/#{scenario.name}-#{Time.now}"
#   @browser.screenshot.save(image)
#   embed(image, 'image/png')
# end
