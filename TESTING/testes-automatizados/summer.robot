*** Settings ***
Library         SeleniumLibrary
Resource        ./summer.resource
Test Setup      Abrir o site da aplicação
Test Teardown   Close Browser

*** Test Cases ***
Cadastro
    #Abrir o site da aplicação
    Clicar no botão (+) para cadastrar um novo filme
    Adicionar uma URL de imagem
    Inserir "Shrék" como título do filme
    Inserir "1 filmê muito legal" a descrição do filme
    Clicar em "Salvar"

Edicao
    Clicar no botão "Detalhes" de um cartão
    Alterar a URL da imagem
    Alterar o título para: "Shèeek"
    Alterar a descrição para: "Descrição alterada"
    Clicar em "Salvar" de novo

Exclusao
    Clicar no botão "Detalhes" de um cartão
    Clicar no botão "Deletar"

Favoritar e Desfavoritar
    Clicar no ícone de estrela
    Clicar na aba "Favoritos"
    Clicar na estrela destacada