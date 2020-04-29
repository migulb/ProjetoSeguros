require_relative '../../ScreenObject/tela_login'
require_relative '../../ScreenObject/caminho_seguro'

Dado("que eu acesse o app meu cartao da BV") do
  @login=Screen_TelaLogin.new()
  @seguro=Screen_CaminhoSeguro.new()
end

Quando("preencher cpf e senha e depois tocar no botao acessar") do
  @login.realizarLogin   
end
  
Entao("o app devera ser acessado") do
    @seguro.clica_Mais
    @seguro.clica_Seguros
    @seguro.escolhe_seguroFinanca
    @seguro.aceite_termo
    @seguro.clica_Contratar
end
Entao("eu acesso o app") do
  
end