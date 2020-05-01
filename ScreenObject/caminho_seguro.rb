require_relative '../Utilidades/base_functions'

class Screen_CaminhoSeguro < Functions

    def initialize
        @txt_wait = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ViewFlipper[2]/android.widget.LinearLayout/android.widget.TextView[1]'
        @btn_mais = 'item_more'
        @btn_seguros = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]'
        @btn_financas = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.view.ViewGroup'
        @btn_cartao = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.view.ViewGroup'
        @btn_pet = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.view.ViewGroup[2]/android.support.v7.widget.RecyclerView/android.widget.LinearLayout/android.view.ViewGroup'
        @chk_termos = 'plan_checkbox'
        @tk_sms = 'token_by_sms'
      
    end
    def clica_Mais
        wait_for_element_exists_by_xpath(@txt_wait, 10)
        mais = driver.find_element(:id, @btn_mais)
        mais.click
    end
    
    def clica_Seguros
        seguros = driver.find_element(:xpath, @btn_seguros)
        seguros.click
    end
    
    def escolhe_seguroFinanca
        seguro= driver.find_element(:xpath, @btn_financas)
        seguro.click
    end
    
    def clica_SeguroCartao
        cartao = driver.find_element(:xpath, @btn_cartao )
        artao.click
    end

    def clica_assistenciaPet
        pet = driver.find_element(:xpath, @btn_pet )
        pet.click
    end
    def aceite_termo
        driver.scroll_to ('Contratar')
        tipo = driver.find_element(:id, chk_termos)
        tipo.click
    end
    
    def clica_Contratar
        btn_contratar= driver.scroll_to('Contratar')
        btn_contratar.click
    end

    def token_sms
        expt = find_element(:id, tk_sms)
    end
    
end