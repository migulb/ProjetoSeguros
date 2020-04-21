require_relative '../../ScreenObject/tela_login'
require_relative '../../ScreenObject/caminho_seguro'

Dado("que eu acesse o app meu cartao") do
end

Quando("preencher cpf e senha e tocar no botao acessar") do
  @login.realizarLogin   
end
  
Entao("o app sera acessado") do
    @seguro.clica_Mais
    @seguro.clica_Seguros
    @seguro.clica_assistenciaPet
    @seguro.aceite_termo
    @seguro.clica_Contratar
end
Entao("eu acesso o app") do
  
end