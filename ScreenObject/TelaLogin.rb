class Screen_TelaLogin < SitePrism::Page

    def digita_CPF (cpfs)
        cpf = driver.find_element(:id, 'br.com.votorantim.cartoes.debug:id/input_text')        
        cpf.click
        cpf.send_keys(cpfs)
    end
    
    def digita_Senha (senha)
        pw = driver.find_element(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText')
        pw.click
        pw.send_keys(senha)
        @driver.hide_keyboard
    end

    def clicar_Acessar
        btn_acessar = driver.find_element(:id, 'br.com.votorantim.cartoes.debug:id/button_sign_in')
        btn_acessar.click
    end
end