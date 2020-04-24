#language: pt

Funcionalidade: Efetuar login no App Meu Cartao e Contratar Seguro Proteção para Cartão

Contexto:
Dado que eu abra o app meu cartao
Quando preencher cpf e senha e toque no botao acessar

@cartao1
Cenário: Adquirir um Seguro Cartao via app da BV
Entao o app devera abrir

@cartao
Cenário: Cancelar Seguro Cartao via app da BV
Entao eu irei acessar o app