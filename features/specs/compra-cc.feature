# language: pt
Funcionalidade: Compra por Cartão de Crédito
    
    @compra_cc
    Cenario: Realizar compra de um produto via pix ou boleto

    Dado que eu acesse a tela de login
    E acesse a opção email e senha
    E realizo login com "renata.cruz@cobasi.com.br" e "Cobasi@123"
    E que eu realize uma busca de produto "joy orelha bovina"
    E selecione um produto
    E clicar em Adicionar ao Carrinho
    E clico em Ir para o carrinho
    E seleciono o tipo de frete e prazo como "Econômica"
    E finalizar a compra
    E clico em continuar para revisão
    E seleciono o "CARTÃO DE CRÉDITO" como metódo de pagamento
    E digito o "5530 4677 9317 3518" como número do cartão de crédito
    E digito o "TESTE CARTÃO" como nome impresso no cartão de crédito
    E digito o "96509227096" como CPF do titular
    E digito a "1024" como validade do cartão
    E digito o "576" como CVV do cartão
    E informo a quantidade "1" de parcelas
    E clico em ir para revisão
    E clico em Finalizar a compra

    Então eu visualizo a compra finalizada do tipo "Cartão de Crédito"