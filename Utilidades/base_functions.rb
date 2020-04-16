class Wait_for
    
    def wait_for_element_exists_by_id(identificator)
        @driver.manage.timeouts.implicit_wait = 20
        find_element(:id, identificator).displayed?
      rescue StandardError => e
        raise e
    end

    def wait_for_xpath(xpath, timeout = 10)
        @driver.wait_true(timeout) do
          @driver.exists { @driver.find_element(:xpath, xpath) }
        end
      end

      def wait_for_element_exists_by_xpath(identificator, time)
        wait_true(time) { @driver.find_element(:xpath, identificator).displayed? }
      rescue StandardError => e
        raise e
      end

    def esconde_teclado
      @driver.hide_keyboard
    end
end