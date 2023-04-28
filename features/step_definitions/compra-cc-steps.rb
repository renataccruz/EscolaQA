Dado('digito o {string} como número do cartão de crédito') do |numero_cartao|
    @CheckoutPage.inserir_numero_cc(numero_cartao) 
end
  
  Dado('digito o {string} como nome impresso no cartão de crédito') do |nome_cartao|
    @CheckoutPage.inserir_nome_cc(nome_cartao)
  end
  
  Dado('digito o {string} como CPF do titular') do |cpf_cartao|
   @CheckoutPage.inserir_cpf_cc(cpf_cartao)
  end
  
  Dado('digito a {string} como validade do cartão') do |validade_cartao|
    @CheckoutPage.inserir_validade_cc(validade_cartao)
  end
  
  Dado('digito o {string} como CVV do cartão') do |cvv_cartao|
    @CheckoutPage.inserir_cvv_cc(cvv_cartao)
  end

  Dado('informo a quantidade {string} de parcelas') do |parcelas_cartao|
    @CheckoutPage.inserir_parcelas_cc(parcelas_cartao)
  end
  