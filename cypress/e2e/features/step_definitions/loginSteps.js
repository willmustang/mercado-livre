import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';

Given('que eu estou na página de login do Mercado Livre', () => {
  cy.visit('https://www.mercadolivre.com.br');
  cy.get('a[data-testid="login-button"]').click(); // Ajuste o seletor conforme necessário
});

When('eu insiro o email {string}', (email) => {
  cy.get('input[type="email"]').type(email); // Ajuste o seletor conforme necessário
});

When('eu insiro a senha {string}', (senha) => {
  cy.get('input[type="password"]').type(senha); // Ajuste o seletor conforme necessário
});

When('eu clico no botão {string}', (buttonText) => {
  cy.contains('button', buttonText).click(); // Ajuste o seletor conforme necessário
});

Then('eu devo ser redirecionado para a página inicial', () => {
  cy.url().should('eq', 'https://www.mercadolivre.com.br/home'); // Ajuste a URL conforme necessário
});

Then('eu devo ver meu nome de usuário no cabeçalho', () => {
  cy.get('header').should('contain', 'Nome do Usuário'); // Ajuste o seletor e o texto conforme necessário
});

Then('eu devo ver uma mensagem de erro {string}', (errorMessage) => {
  cy.get('.error-message').should('contain', errorMessage); // Ajuste o seletor conforme necessário
});