require_relative '../../ScreenObject/tela_login'
require_relative '../../ScreenObject/caminho_seguro'

Dado("que eu abra o app meu cartao") do
  @login=Screen_TelaLogin.new()
  @seguro=Screen_CaminhoSeguro.new()
end

Quando("preencher cpf e senha e toque no botao acessar") do
  @login.realizarLogin   
end
  
Entao("o app devera abrir") do
    @seguro.clica_Mais
    @seguro.clica_Seguros
    @seguro.clica_SeguroCartao
    @seguro.aceite_termo
    @seguro.clica_Contratar
end
Entao("eu irei acessar o app") do
  
end