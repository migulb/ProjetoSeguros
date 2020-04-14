class WaitElement

    def wait_for(seconds)
        Selenium::WebDriver::Wait.new(:timeout=> seconds).until {yield}
    end
end