Dado('que eu realize uma busca de produto {string}') do |busca|
    @HomePage.realizar_busca(busca)
  end
  
  Dado('selecione um produto') do
    @PlpPage.selecionar_produto
  end
  
  Então('devo ser direcionado para a PDP com sucesso') do
    button1 = find("button", text: "Adicionar ao carrinho")
    button2 = find(:xpath, '//button[text()="Comprar e programar"]')
    expect(button1.visible?).to be true
    expect(button2.visible?).to be true
  end
  