After do |scenario|
  if scenario.failed?
    Dir.mkdir('failure_images') unless File.directory? 'failure_images'
    image = "./failure_images/#{scenario.name}-#{Time.now}"
    @browser.screenshot.save(image)
    p "Failure image available: #{image}"
    embed(image, 'image/png')
  end
end
