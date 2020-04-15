require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'appium_console'
require 'appium_lib'

caps = Appium.load_appium_txt file: File.expand_path("caps.txt", __dir__), verbose: true

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object