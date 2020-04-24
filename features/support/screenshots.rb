def tira_screen scenario
    sufix = ("failed" if scenario.failed?) || "passed"
  name = scenario.name.tr(" ", "_").downcase
  platform = ENV['PLATFORMNAME']= 'Android_'
  if scenario.failed?
    unless File.directory?("screenshots/failed")
      FileUtils.mkdir_p("screenshots/failed")
    end
    screenshot_name = "#{platform}#{name}#{Time.now.strftime("%d-%m-%Y_%H.%M.%S")}.png"
    screenshot_file = File.join("screenshots/failed", screenshot_name)
    driver.screenshot(screenshot_file)
    embed("#{screenshot_file}", "image/png")
  elsif scenario.passed?
    unless File.directory?("screenshots/passed")
      FileUtils.mkdir_p("screenshots/passed")
    end
    screenshot_name = "#{platform}#{name}#{Time.now.strftime("%d-%m-%Y_%H.%M.%S")}.png"
    screenshot_file = File.join("screenshots/passed", screenshot_name)
    driver.screenshot(screenshot_file)
      embed("#{screenshot_file}", "image/png")
    end
end
