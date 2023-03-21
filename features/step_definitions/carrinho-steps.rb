Dado('que eu selecione a categoria {string}') do |categoria|
    categoria = find_all("div[data-testid='categorie-item']")
    categoria[1].click
  end
  
  Dado('selecione a opção de {string}') do |filtro|
    filtro = find("a", text: "Ração Seca").click
  end

  Dado('selecione um produto da pagina') do
    produtos = find_all("div[data-testid='product-item']")
    produtos[0].click
  end
  
  Então('eu adiciono ao carrinho') do
    find("button", text: "Adicionar ao carrinho").click
    sleep 10
  end