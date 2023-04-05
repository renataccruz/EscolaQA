# language: pt
Funcionalidade: Compra de produto
    
    @compra
    Cenario: Realizar compra de um produto via pix ou boleto

    Dado que eu acesse a tela de login
    E acesse a opção email e senha
    E realizo login com "renata.cruz@cobasi.com.br" e "Cobasi@123"
    E que eu realize uma busca de produto "joy orelha bovina"
    E selecione um produto
    E clicar em Adicionar ao Carrinho
    E clico em Ir para o carrinho
    E seleciono o tipo de frete e prazo como "Economica"
    E finalizar a compra
    E clico em continuar para revisão
    E seleciono o "PIX" como metódo de pagamento
    E clico em ir para revisão
    E clico em Finalizar a compra

    Então eu visualizo a compra finalizada do tipo "PIX"