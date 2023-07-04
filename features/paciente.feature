Feature:
  As a usuario
  I want to cadastra um novo paciente
  So that possa agendar consultas

  Scenario: cadastrar paciente valido
    Given Estou na pagina inicial
    And Clico em "Cadastrar paciente"
    When Agora na pagina de cadastrar paciente eu preencho os campode de Nome "Giudicelli Elias" Data "25/08/2000" Cpf "89629268060" Email "giudicelli@gmail.com" Cidade "Garanhuns" Logradouro "Rua Com Saida" Complemento "ao lado do bonanza" Bairro "Preto" Cep "55290000"
    And Clico em "Create Paciente"
    Then Vejo "Paciente was successfully created."
    And agora estou vendo o paciente cadastrado

  Scenario: cadastrar paciente invalido
    Given Estou na pagina inicial
    And Clico em "Cadastrar paciente"
    When Agora na pagina de cadastrar paciente eu preencho os campode de Nome "Giudicelli Elias" Data "25/08/2000" Cpf "8962926806E" Email "giudicelli@gmail.com" Cidade "Garanhuns" Logradouro "Rua Com Saida" Complemento "ao lado do bonanza" Bairro "Preto" Cep "55290000"
    And Clico em "Create Paciente"
    Then Vejo "1 error prohibited this paciente from being saved"
