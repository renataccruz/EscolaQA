Dado('que eu realize uma busca de produto {string}') do |busca|
    find("input[placeholder='Para seu pet ou sua casa, procure aqui']").set busca
    click_link(busca)
  end
  
  Dado('selecione um produto') do
    # produtos = find_all("div[data-testid='product-item']").sample
    # produtos.click
    produtos = find_all("div[data-testid='product-item']")
    produtos[0].click
  end
  
  Então('devo ser direcionado para a PDP com sucesso') do
    button1 = find("button", text: "Adicionar ao carrinho")
    button2 = find(:xpath, '//button[text()="Assinar e economizar"]')
    expect(button1.visible?).to be true
    expect(button2.visible?).to be true
    sleep 5
  end
  