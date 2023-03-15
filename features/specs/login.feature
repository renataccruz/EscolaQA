# language: pt
Funcionalidade: Login

  Cenario: Realizar login com sucesso
    Dado que eu acesse a tela de login
    E acesse a opção email e senha
    E realizo login com "renata.cruz@maitha.com.br" e "H@Salada23@H"
    Então estou logado com sucesso

  @login_assinatura
  Cenario: Login pelo menu de assinatura
    Dado que eu acesse a tela de assinatura
    Quando clique no botão entrar 
    E acesse a opção email e senha
    E realizo login com "renata.cruz@maitha.com.br" e "H@Salada23@H"
    Então devo ser redirecionado para a tela de assinatura 
    

  @login_com_falha
  Esquema do Cenario: Realizar login com falha
    Dado que eu acesse a tela de login
    E acesse a opção email e senha
    E realizo login com "<email>" e "<senha>"
    Então devo ver a "<mensagem>" com sucesso

    Exemplos: 
      | email                     | senha        | mensagem                   |
      | renata.cruz@maitha.com.br |              | E-mail ou senha inválidos. |
      | renataz@maitha.com.br     | H@Salada23@H | E-mail ou senha inválidos. |
      |                           | H@Salada23@H | E-mail ou senha inválidos. |
      | renata.cruz@maitha.com.br | Cobasi@123   | E-mail ou senha inválidos. |

