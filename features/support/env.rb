require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'appium_console'
require 'appium_lib'

def caps
    { caps: {
      deviceName: "emulator-5554",
      platformName: "Android",

      appPackage: "br.com.votorantim.cartoes.debug",
      appActivity: "br.com.votorantim.cartoes.ui.login.WelcomeActivity",
      newCommandTimeout: "3600",
    } }
    end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object