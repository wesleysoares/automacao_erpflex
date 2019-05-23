#language: pt
Funcionalidade: Cadastro de solicitante 
    Sendo um usuário do sistema
    Posso fazer um cadastro de solicitante com Nome, Email, Departamento, Observações e definir um status

@smoke
Cenário: Cadastro simples
    Dado que estou logado no sistema
    Quando faço o cadastro de solicitante
    Então o cadastro deve ser salvo com sucesso

