/// <reference types = "cypress"  />

context('Acesso a página de login', () => {
    beforeEach(() => {
        cy.visit('https://www.saucedemo.com/');
    });

    afterEach(() => {
        cy.clearAllSessionStorage({log: true});
        cy.screenshot();
        });

    it('Acessar a tela de login', () => {
        cy.get('.login_logo');
    });

    it('Login válido', () => {
        cy.get('[data-test="username"]').type("standard_user");
        cy.get('[data-test="password"]').type('secret_sauce');
        cy.get('[data-test="login-button"]').click();
        cy.get('.title').contains('Products');
    });

})