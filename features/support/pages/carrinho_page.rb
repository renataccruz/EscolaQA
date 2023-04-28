class CarrinhoPage
    include Capybara::DSL

    def selecionar_frete_prazo(opcao)
        case opcao
        when "Economica"
            find("h2", text: "Econômica").click
        end
    end

    def clicar_finalizar_compra
        find("span", text: "Finalizar a compra").click
    end

end