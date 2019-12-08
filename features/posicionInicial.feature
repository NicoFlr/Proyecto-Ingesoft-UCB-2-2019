Feature:
  Como jugador
quiero definir la posicion incial del vehiculo
para tener mas libertad de movimiento al iniciar

  Background:
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "fieldRows"
    And ingreso el numero "5" en el campo "fieldColumns"
    And ingreso las instrucciones "AD" en el campo "instructions"
    And ingreso la orientacion "n" en el campo "orientation"

  Scenario: El jugador ingresa coordenadas de inicio y dentro de los limites de la arena

    And ingreso el numero "2" en el campo "posX"
    And ingreso el numero "3" en el campo "posY"
    When El jugador presiona el boton "jugar"
    Then El sistema muestra que el vehiculo comienza en las coordenadas "2" para X y "3" para Y

  Scenario: El jugador ingresa al menos una coordenada de inicio negativa y dentro de los limites de la arena
    Given visita la pagina principal
    And ingreso el numero "-2" en el campo "posX"
    And ingreso el numero "3" en el campo "posY"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra el mensaje de error "Posicion de inicio incorrecta (alguna coordenada inicial no puede ser negativa)"

  Scenario: El jugador ingresa coordenadas de inicio y fuera de los limites de la arena
    Given visita la pagina principal
    And ingreso el numero "222" en el campo "posX"
    And ingreso el numero "350" en el campo "posY"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra el mensaje de error "Posicion de inicio incorrecta (Coordenadas se salen de la arena)"