#robot -d ./Logs summer.robot 
*** Variables ***
${SITE}                 http://localhost:3000/
${NAVEGADOR}            Chrome
${BOTAO_CADASTRO}       css=#root > button
${CAMPO_IMAGEM}         css=#formUrl
${URL_IMAGEM}           https://http.cat/201
${CAMPO_TITULO}         css=#formTitle
${TITULO}               Shrék
${CAMPO_DESCRICAO}      css=#formDescription
${DESCRICAO}            1 filmê muito legal
${BOTAO_SALVAR}         css=body > div.fade.modal.show > div > div > div.modal-footer > button
${BOTAO_DETALHE}        css=#uncontrolled-tab-example-tabpane-all > div > div > div:nth-child(1) > div > div > button
${URL_IMAGEM_NOVA}      https://http.cat/418
${NOVO_TITULO}          Shèeek
${NOVA_DESCRICAO}       Descrição alterada
${BOTAO_SALVAR_2}       css=body > div.fade.modal.show > div > div > div.modal-footer > button.btn.btn-success
${BOTAO_DELETAR}        css=body > div.fade.modal.show > div > div > div.modal-footer > button.btn.btn-danger
${ESTRELA}              css=#uncontrolled-tab-example-tabpane-all > div > div > div:nth-child(1) > div > span
${ESTRELA_DESTACADA}    css=#uncontrolled-tab-example-tabpane-all > div > div > div:nth-child(1) > div > span
${ABA_FAVORITOS}        css=#uncontrolled-tab-example-tab-favorites

*** Keywords ***
Abrir o site da aplicação
    Open Browser    ${SITE}     ${NAVEGADOR}
    Maximize Browser Window

Clicar no botão (+) para cadastrar um novo filme
    Wait and Click  ${BOTAO_CADASTRO}

Adicionar uma URL de imagem
    Wait and Input Text     ${CAMPO_IMAGEM}     ${URL_IMAGEM}

Inserir "Shrék" como título do filme
    Wait and Input Text     ${CAMPO_TITULO}     ${TITULO}

Inserir "1 filmê muito legal" a descrição do filme
    Wait and Input Text     ${CAMPO_DESCRICAO}  ${DESCRICAO}

Clicar em "Salvar"
    Wait and Click    ${BOTAO_SALVAR}

Clicar no botão "Detalhes" de um cartão
    Wait and Click  ${BOTAO_DETALHE}

Alterar a URL da imagem
    Wait and Input Text  ${CAMPO_IMAGEM}  ${URL_IMAGEM_NOVA}

Alterar o título para: "Shèeek"
    Wait and Input Text  ${CAMPO_TITULO}  ${NOVO_TITULO}

Alterar a descrição para: "Descrição alterada"
    Wait and Input Text  ${CAMPO_DESCRICAO}  ${NOVA_DESCRICAO}

Clicar em "Salvar" de novo
    Wait and Click    ${BOTAO_SALVAR_2}

Clicar no botão "Deletar"
    Wait and Click  ${BOTAO_DELETAR}

Clicar no ícone de estrela
    Wait and Click  ${ESTRELA}

Clicar na aba "Favoritos"
    Wait and Click  ${ABA_FAVORITOS}

Clicar na estrela destacada
    Wait and Click  ${ESTRELA_DESTACADA}



#Comandos Personalizados - Keyword personalizada
Wait and Click
    [Arguments]                         ${ELEMENTO}
    Wait Until Element is Visible       ${ELEMENTO}
    Wait Until Element is Enabled       ${ELEMENTO}
    Click Element                       ${ELEMENTO}

Wait and Input Text
    [Arguments]                         ${ELEMENTO}     ${TEXTO}
    Wait Until Element is Visible       ${ELEMENTO}
    Wait Until Element is Enabled       ${ELEMENTO}
    Input Text                          ${ELEMENTO}     ${TEXTO}
