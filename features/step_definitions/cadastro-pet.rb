Dado("clico em Vamos lá") do
@CadastroPet.iniciar_cadastro_pet
end

Dado("clico em Adicionar") do
@CadastroPet.adicionar_pet
end

Dado("seleciono {string} como tipo de pet") do |tipo_pet|
@CadastroPet.seleciona_tipo_pet(tipo_pet)
end

Dado("seleciono {string} como sexo do pet") do |sexo_pet|
@CadastroPet.seleciona_sexo_pet(sexo_pet)
end

Dado("digito {string} como nome do pet") do |nome_pet|
@CadastroPet.cadastra_nome_pet(nome_pet)
end

Dado("insiro {string} meses como data de nascimento") do |data_nasc_pet|
@CadastroPet.cadastra_data_nasc_pet(data_nasc_pet)
end

Dado('seleciono {string} como raça do pet') do |raca_pet|
@CadastroPet.seleciona_raca_pet(raca_pet)
end

Dado("clico em Finalizar") do
@CadastroPet.finalizar_criacao_pet
end

Então("deve ser exibido um modal do pet cadastrado com sucesso") do
@CadastroPet.pets_cadastrados
end
