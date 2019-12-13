Feature:
  Como jugador
  Quiero definir la posicion incial del vehiculo
  Para tener mas libertad de movimiento al iniciar

  Background:
    Given visita la pagina principal
    And ingreso las instrucciones "AD" en el campo "instructions"
    And ingreso la orientacion "n" en el campo "orientation"

  Scenario: El jugador ingresa coordenadas de inicio y dentro de los limites de la arena
    Given ingreso el numero "2" en el campo "posX"
    And ingreso el numero "3" en el campo "posY"
    And El jugador presiona el boton "GuardarVehiculo"
    And El jugador presiona el boton "siguiente"
    And El sistema muestra la pagina para configurar la arena
    And ingreso el numero "7" en el campo "fieldRows"
    And ingreso el numero "5" en el campo "fieldColumns"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra que la arena tiene "7" filas y "5" columnas

  Scenario: El jugador ingresa al menos una coordenada de inicio negativa
    Given ingreso el numero "-2" en el campo "posX"
    And ingreso el numero "3" en el campo "posY"
    And El jugador presiona el boton "GuardarVehiculo"
    Then El sistema le muestra el mensaje de error "Posicion invalida en X (coordenada inicial no puede ser negativa)"

  Scenario: El jugador ingresa coordenadas de inicio y fuera de los limites de la arena
    Given ingreso el numero "222" en el campo "posX"
    And ingreso el numero "350" en el campo "posY"
    And El jugador presiona el boton "GuardarVehiculo"
    And El jugador presiona el boton "siguiente"
    And El sistema muestra la pagina para configurar la arena
    And ingreso el numero "7" en el campo "fieldRows"
    And ingreso el numero "5" en el campo "fieldColumns"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra el mensaje de error "Posicion de inicio incorrecta (Coordenadas se salen de la arena)"