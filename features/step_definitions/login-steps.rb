Dado('que eu acesse a tela de login') do
    @HomePage.clique_login()
  end
  
  Dado('acesse a opção email e senha') do
    @LoginPage.opcao_login("email e senha")
  end
  
  Dado('realizo login com {string} e {string}') do |email, senha|
    @LoginPage.acessar_conta(email,senha)
  end
  
  Então('estou logado com sucesso') do
    expect(page).to have_content('Olá')
  end
  
  Então('devo ver a {string} com sucesso') do |mensagem|
    alerta = find("span", text: "E-mail ou senha inválidos.")
    expect(alerta.visible?).to be true
  end

  Dado('que eu acesse a tela de assinatura') do
    @HomePage.menu_cabecalho("Compra Programada")
  end
  
  Quando('clique no botão entrar') do
    @CompraProgramadaPage.clique_entrar()
    end
    
  Então('devo ser redirecionado para a tela de assinatura') do
      elemento = find("h2", text: "Sua conta")
      expect(elemento.visible?).to be true 
    end