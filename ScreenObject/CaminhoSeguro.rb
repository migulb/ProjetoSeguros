class Screen_CaminhoSeguro < SitePrism::Page

    def clica_Mais
        btn_mais = driver.find_element(:id, 'br.com.votorantim.cartoes.debug:id/item_more')
        btn_mais.click
    end
    
    def clica_Seguros
        btn_seguros = driver.find_element(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]')
        btn_seguros.click
    end

    def escolhe_seguro
        seguro= driver.find_element(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.view.ViewGroup')
        seguro.click
    end

    def aceite_termo
        driver.scroll_to ('Contratar')
        tipo = driver.find_element(:id, 'br.com.votorantim.cartoes.debug:id/plan_checkbox')
        tipo.click
    end

    def clica_Contratar
        btn_contratar= driver.scroll_to('Contratar')
        btn_contratar.click
    end
end