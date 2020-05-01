# frozen_string_literal: true
require_relative '../Utilidades/base_functions'
class Screen_TelaLogin < Functions

    def initialize
        @campo_de_cpf = 'input_text'
        @campo_de_senha = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText'
        @btn_acessar = 'button_sign_in'
    end

    def digita_CPF (cpfs)
        cpf = driver.find_element(:id, @campo_de_cpf)        
        cpf.send_keys CREDENCIAL[cpfs]
    end
    
    def digita_Senha (senha)
        pw = driver.find_element(:xpath, @campo_de_senha )
        pw.click
        pw.send_keys CREDENCIAL[senha]
        hide_keyboard
    end

    def clicar_Acessar
        wait_for_element_exists_by_id(@btn_acessar)
        btn_acesso = driver.find_element(:id, @btn_acessar)
        btn_acesso.click
    end

    def realizarLogin
        digita_CPF(:campo_cpf)
        digita_Senha(:campo_senha)
        clicar_Acessar
    end
end