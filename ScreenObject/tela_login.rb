require_relative '../Utilidades/base_functions'

class Screen_TelaLogin < Wait_for

    def digita_CPF (cpfs)
        cpf = driver.find_element(:id, 'br.com.votorantim.cartoes.debug:id/input_text')        
        cpf.send_keys(cpfs)
    end
    
    def digita_Senha (senha)
        pw = driver.find_element(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText')
        pw.click
        pw.send_keys(senha)
        esconde_teclado
    end

    def clicar_Acessar
        wait_for_element_exists_by_id('br.com.votorantim.cartoes.debug:id/button_sign_in')
        btn_acessar = driver.find_element(:id, 'br.com.votorantim.cartoes.debug:id/button_sign_in')
        btn_acessar.click
    end

    def realizarLogin
        digita_CPF(44441830556)
        digita_Senha('091017')
        clicar_Acessar
    end
end