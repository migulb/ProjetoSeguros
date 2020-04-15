require_relative '../../ScreenObject/TelaLogin'
require_relative '../../ScreenObject/CaminhoSeguro'

Dado("que eu acesse o app meu cartao") do
end

Quando("preencher cpf e senha e tocar no botao acessar") do
  @login.realizarLogin   
end
  
  Entao("o app sera acessado") do
    sleep 8
    @seguro.clica_Mais
    sleep 3
    @seguro.clica_Seguros
    sleep 8
    @seguro.escolhe_seguro
    sleep 4
    @seguro.aceite_termo
    @seguro.clica_Contratar
  end