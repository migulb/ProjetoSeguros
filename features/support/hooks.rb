require "report_builder"
require "date"

Before do
  $driver.start_driver
  @login=Screen_TelaLogin.new()
  @seguro=Screen_CaminhoSeguro.new()
end

After do |scenario|
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
    driver.driver_quit
  end
  at_exit do
        @infos = {
          "device" => "Android",
          "environment" => "Dev",
          "Data do Teste" => DateTime.now.to_s
        }
   ReportBuilder.configure do |config|
      config.input_path = "log/report.json"
      config.report_path = "log/report"
      config.report_types = [:html]
      config.report_title = "Projeto Seguro"
      config.additional_info = @infos
      config.color = "indigo"
    end
    ReportBuilder.build_report
  end