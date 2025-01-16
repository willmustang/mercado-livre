Feature: Funcionalidade de Login

  Cenário: Login com sucesso
    Dado que eu estou na página de login do Mercado Livre
    Quando eu insiro o email "usuario@example.com"
    E eu insiro a senha "senha123"
    E eu clico no botão "Entrar"
    Então eu devo ser redirecionado para a página inicial
    E eu devo ver meu nome de usuário no cabeçalho

  Cenário: Login com falha devido a senha incorreta
    Dado que eu estou na página de login do Mercado Livre
    Quando eu insiro o email "usuario@example.com"
    E eu insiro a senha "senhaErrada"
    E eu clico no botão "Entrar"
    Então eu devo ver uma mensagem de erro "Credenciais inválidas"

  Cenário: Login com falha devido a email não registrado
    Dado que eu estou na página de login do Mercado Livre
    Quando eu insiro o email "emailNaoRegistrado@example.com"
    E eu insiro a senha "senha123"
    E eu clico no botão "Entrar"
    Então eu devo ver uma mensagem de erro "Usuário não encontrado"

  Cenário: Login com falha devido a campo de email vazio
    Dado que eu estou na página de login do Mercado Livre
    Quando eu deixo o campo de email vazio
    E eu insiro a senha "senha123"
    E eu clico no botão "Entrar"
    Então eu devo ver uma mensagem de erro "O campo de email é obrigatório"

  Cenário: Login com falha devido a campo de senha vazio
    Dado que eu estou na página de login do Mercado Livre
    Quando eu insiro o email "usuario@example.com"
    E eu deixo o campo de senha vazio
    E eu clico no botão "Entrar"
    Então eu devo ver uma mensagem de erro "O campo de senha é obrigatório"

  Cenário: Login com falha devido a email em formato inválido
    Dado que eu estou na página de login do Mercado Livre
    Quando eu insiro o email "usuario@com"
    E eu insiro a senha "senha123"
    E eu clico no botão "Entrar"
    Então eu devo ver uma mensagem de erro "Formato de email inválido"

  Cenário: Login com falha devido a email com caracteres especiais
    Dado que eu estou na página de login do Mercado Livre
    Quando eu insiro o email "usuário!@example.com"
    E eu insiro a senha "senha123"
    E eu clico no botão "Entrar"
    Então eu devo ver uma mensagem de erro "Formato de email inválido"

  Cenário: Login com falha devido a senha com menos de 6 caracteres
    Dado que eu estou na página de login do Mercado Livre
    Quando eu insiro o email "usuario@example.com"
    E eu insiro a senha "123"
    E eu clico no botão "Entrar"
    Então eu devo ver uma mensagem de erro "A senha deve ter pelo menos 6 caracteres"

  Cenário: Login com falha devido a senha com mais de 20 caracteres
    Dado que eu estou na página de login do Mercado Livre
    Quando eu insiro o email "usuario@example.com"
    E eu insiro a senha "senhaMuitoLonga1234567890"
    E eu clico no botão "Entrar"
    Então eu devo ver uma mensagem de erro "A senha não pode ter mais de 20 caracteres"

  Cenário: Login com falha devido a email com espaços em branco
    Dado que eu estou na página de login do Mercado Livre
    Quando eu insiro o email " usuario@example.com "
    E eu insiro a senha "senha123"
    E eu clico no botão "Entrar"
    Então eu devo ver uma mensagem de erro "Formato de email inválido"

  Cenário: Login com falha devido a senha com espaços em branco
    Dado que eu estou na página de login do Mercado Livre
    Quando eu insiro o email "usuario@example.com"
    E eu insiro a senha " senha123 "
    E eu clico no botão "Entrar"
    Então eu devo ver uma mensagem de erro "A senha não pode conter espaços em branco"