require_relative '../../ScreenObject/TelaLogin'
require_relative '../../ScreenObject/CaminhoSeguro'

Dado("a abertura do app eu digito meus dados cpf e senha") do 
    sleep 2                           
     @login.digita_CPF(44441830556)
     @login.digita_Senha('091017')
    sleep 2
     @login.clicar_Acessar
  end
  
  Quando("aperto no botao mais do lado direito inferior") do
    sleep 8
    @seguro.clica_Mais
  end
  
  Quando("aperto em Seguros e Assistencias") do
    @seguro.clica_Seguros
  end
  
  Quando("seleciono o plano classico") do
    
  end
  
  Quando("concordo com as condicoes gerais") do
    
  end
  
  Então("confirmo a contratacao do Seguro") do
    
  end