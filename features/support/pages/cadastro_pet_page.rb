class CadastroPet
    
    include Capybara::DSL
    require 'faker'

    def iniciar_cadastro_pet
        find("button", text:"Vamos lá").click
    end

    def adicionar_pet
        find(:xpath,'//a[contains(@class, "button-addPet")]').click
    end

    def seleciona_tipo_pet(tipo_pet)
        find("#Gato").click
    end

    def seleciona_sexo_pet(sexo_pet)
        case sexo_pet
            when "Fêmea"
                find("#FEMALE").click
            when "Macho"
                find("#MALE").click
        end
    end

    def cadastra_nome_pet(nome_pet) 
        find("#nome").set nome_pet = Faker::Name.first_name 
        find(:xpath, "//div[contains(@class, 'next d-flex')]").click
    end

    def cadastra_data_nasc_pet(data_nasc_pet)
        find(:xpath, "//div[contains(@class, 'sc-bbmXgH')]//*[@id='2']").click
        find("#typeinp").set data_nasc_pet
        find(:xpath, "//div[contains(@class, 'next d-flex')]").click
    end

    def seleciona_raca_pet(raca_pet)
        find("#react-select-2-input").click
        find("#react-select-2-option-21").click
    end

    def finalizar_criacao_pet
        find("button", text:"Finalizar").click
        find("button", text:"OK").click
    end

    def pets_cadastrados
        find("h3", text:"Bem-vindo ao Espaço Pet")
    end
end