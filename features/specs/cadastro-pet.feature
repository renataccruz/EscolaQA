# language: pt
Funcionalidade: Cadastro de PET
    
    @cadastro_pet
    Cenario: Realizar o cadastro de um PET

    Dado que eu acesse a tela de login
    E acesse a opção email e senha
    E realizo login com "renata.cruz@cobasi.com.br" e "Cobasi@123"
    E que eu clique em "Espaço Pet"
    E clico em Vamos lá
    E clico em Adicionar
    E seleciono "Gato" como tipo de pet
    E seleciono "Fêmea" como sexo do pet
    E digito "<nome_pet>" como nome do pet
    E insiro "13" meses como data de nascimento
    E seleciono "" como raça do pet
    E clico em Finalizar
    Então deve ser exibido um modal do pet cadastrado com sucesso

    Exemplos:
        |nome_pet|
        |nome_pet|