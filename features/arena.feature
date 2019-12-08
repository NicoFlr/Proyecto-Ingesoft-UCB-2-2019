Feature:
  Como jugador
  Quiero poder definir el tamanio de la arena
  Para poder jugar en ella

  Como jugador
  Quiero que se muestre la arena creada
  Para sentirme a gusto

  Background:
    Given visita la pagina principal
    And ingreso el numero "2" en el campo "posX"
    And ingreso el numero "3" en el campo "posY"
    And ingreso las instrucciones "AD" en el campo "instructions"
    And ingreso la orientacion "n" en el campo "orientation"

  Scenario: El jugador ingresa dimensiones de arena reales
    And ingreso el numero "7" en el campo "fieldRows"
    And ingreso el numero "5" en el campo "fieldColumns"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra que la arena tiene "7" filas y "5" columnas

  Scenario: El jugador ingresa un numero de filas irreales
    Given visita la pagina principal
    And ingreso el numero "-7" en el campo "fieldRows"
    And ingreso el numero "5" en el campo "fieldColumns"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra el mensaje de error "Dimensiones de arena incorrectas (filas no pueden ser negativas)"

  Scenario: El jugador ingresa un numero de columnas irreales
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "fieldRows"
    And ingreso el numero "-5" en el campo "fieldColumns"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra el mensaje de error "Dimensiones de arena incorrectas (columnas no pueden ser negativas)"

  Scenario: Como jugador Quiero que se muestre la arena creada para sentirme a gusto
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "fieldRows"
    And ingreso el numero "5" en el campo "fieldColumns"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra la arena con las dimensiones "7" y "5"