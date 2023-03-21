#language: pt

Funcionalidade: Busca de produto por categoria

    @busca_categoria
    Cenario: Inserir no carrinho um produto por categoria

    Dado que eu selecione a categoria "gatos"
    E selecione a opção de "Ração Seca"
    E selecione um produto da pagina
    Então eu adiciono ao carrinho