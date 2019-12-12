Feature:
    Como jugador
    Quiero poder definir el tamanio de la arena
    Para poder jugar en ella

Scenario: El jugador ingresa dimensiones de arena reales
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "fieldRows"
    And ingreso el numero "5" en el campo "fieldColumns"
    When El jugador presiona el boton "crear_arena"
    Then El sistema le muestra que la arena tiene "7" filas y "5" columnas

Scenario: El jugador ingresa un numero de filas irreales
    Given visita la pagina principal
    And ingreso el numero "-7" en el campo "fieldRows"
    And ingreso el numero "5" en el campo "fieldColumns"
    When El jugador presiona el boton "crear_arena"
    Then El sistema le muestra el mensaje de error "Dimensiones de arena incorrectas (filas no pueden ser negativas)"

Scenario: El jugador ingresa un numero de columnas irreales
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "fieldRows"
    And ingreso el numero "-5" en el campo "fieldColumns"
    When El jugador presiona el boton "crear_arena"
    Then El sistema le muestra el mensaje de error "Dimensiones de arena incorrectas (columnas no pueden ser negativas)"
