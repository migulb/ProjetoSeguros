require_relative '../../ScreenObject/tela_login'
require_relative '../../ScreenObject/caminho_seguro'

Dado("que eu acesse o app meu cartao") do
end

Quando("preencher cpf e senha e aperte o botao acessar") do
  @login.realizarLogin   
end
  
Entao("o app sera aberto") do

    #@seguro.clica_Mais
   # @seguro.clica_Seguros
   # @seguro.clica_assistenciaPet
   # @seguro.aceite_termo
   # @seguro.clica_Contratar
end
Entao("eu terei acesso ao app") do
  
end