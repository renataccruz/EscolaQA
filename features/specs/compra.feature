# language: pt
Funcionalidade: Compra de produto
    
    @compra
    Cenario: Realizar compra de um produto via pix

    Dado que eu realize uma busca de produto "ração cachorro"
    E selecione um produto
    E clicar em Adicionar ao Carrinho
    E clico em Ir para o carrinho
    E finalizar a compra
    E realizo login com "renata.cruz@cobasi.com.br" e "H@Salada23@H"
    E clico em continuar para pagamento
    E seleciono o 'PIX' como metódo de pagamento
    E clico em ir para revisão
    E clico em Finalizar a compra

    Então eu visualizo o código do pix