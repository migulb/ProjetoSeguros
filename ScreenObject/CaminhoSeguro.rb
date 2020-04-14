require_relative '../Utils/WaitElement'

class Screen_CaminhoSeguro < SitePrism::Page

    def clica_Mais
        wait.wait_for{$driver.find_element(:id, "br.com.votorantim.cartoes.debug:id/item_more").displayed?}
        btn_mais = driver.find_element(:id, 'br.com.votorantim.cartoes.debug:id/item_more')
        btn_mais.click
    end
    
    def clica_Seguros
        btn_seguros = driver.find_element(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]')
        btn_seguros.click
    end
end