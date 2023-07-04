Feature:
  As a usuario
  I want to remover um medico
  So that ele não exista mais no sistema

  Scenario: remover medico
    Given Estou na pagina inicial
    And Clico em "Listar medicos"
    When O medico de Nome "GiuElias" Crm "287be9822" exite
    And Clico no button "Destroy this medico" do medico com Crm "287be9822"
    Then Vejo "Medico was successfully destroyed."


  Scenario: remover medico inexistente
    Given Estou na pagina inicial
    And Clico em "Listar medicos"
    When Agora na pagina de medicos não encontro medico de Crm "287bejj22"
    Then Continuo na pagina de medicos
