# cypress-project/cypress-project/README.md

# Cypress Project

Este é um projeto de testes automatizados utilizando Cypress e escrita em Gherkin.

## Estrutura do Projeto

```
MERCADO-LIVRE
├── cypress
│   ├── e2e
│   │   ├── features
│   │   │   └── login.feature
│   │   ├── step_definitions
│   │   │   └── loginSteps.js
│   │   └── support
│   │       ├── commands.js
│   │       └── e2e.js
│   ├── fixtures
│   │   └── example.json
│   ├── plugins
│   │   └── index.js
│   └── support
│       ├── commands.js
│       └── index.js
├── cypress.config.js
├── Dockerfile
├── docker-compose.yml
├── package.json
└── README.md
```

## Instalação

Para instalar as dependências do projeto, execute o seguinte comando:

```
npm install
```

## Execução dos Testes

Para executar os testes, utilize o comando:

```
npx cypress open
```

Isso abrirá a interface do Cypress, onde você poderá selecionar e executar os testes.

## Informações Adicionais

- O arquivo `example.feature` contém a especificação em Gherkin para os testes.
- O arquivo `exampleSteps.js` implementa os passos definidos no arquivo `.feature`.
- O arquivo `commands.js` é utilizado para definir comandos personalizados do Cypress.
- O arquivo `e2e.js` é carregado automaticamente antes dos testes e pode ser usado para configurações globais.

Sinta-se à vontade para contribuir com melhorias e novos testes!