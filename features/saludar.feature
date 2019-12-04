Feature: 
    Como jugador
    Quiero ser saludado por mi nombre
    Para sentir que valgo algo

    Scenario:
    Given visito la pagina principal
    And ingreso el nombre "Pedro" en el campo "Nombre"
    When presiono el boton "Saludar"
    Then deberia ver "Pedro"