require "report_builder"
require "date"
require_relative "screenshots"
require_relative "report"

Before do
  $driver.start_driver
  @login=Screen_TelaLogin.new()
  @seguro=Screen_CaminhoSeguro.new()
end

After do |scenario|
  tira_screen( scenario)
  driver.driver_quit
end

criar_report