Feature:
  Como jugador
  Quiero crear mas de un vehiculo
  Para sentirme a gusto

  Background:
    Given visita la pagina principal
    And ingreso el numero "2" en el campo "posX"
    And ingreso el numero "2" en el campo "posY"
    And ingreso las instrucciones "AD" en el campo "instructions"
    And ingreso la orientacion "n" en el campo "orientation"
    And El jugador presiona el boton "GuardarVehiculo"

Scenario: El jugador aniade otro vehiculo
    Given ingreso el numero "1" en el campo "posX"
    And ingreso el numero "1" en el campo "posY"
    And ingreso las instrucciones "AADA" en el campo "instructions"
    And ingreso la orientacion "n" en el campo "orientation"
    And El jugador presiona el boton "GuardarVehiculo"
    When El jugador presiona el boton "siguiente"
    Then El sistema muestra la pagina para configurar la arena

Scenario: El jugador ve tambien las coordenadas del segundo vehiculo
    Given ingreso el numero "1" en el campo "posX"
    And ingreso el numero "1" en el campo "posY"
    And ingreso las instrucciones "AADA" en el campo "instructions"
    And ingreso la orientacion "n" en el campo "orientation"
    And El jugador presiona el boton "GuardarVehiculo"
    And El jugador presiona el boton "siguiente"
    And El sistema muestra la pagina para configurar la arena
    And ingreso el numero "7" en el campo "fieldRows"
    And ingreso el numero "5" en el campo "fieldColumns"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra que el vehiculo termina en las coordenadas "[ 2 , 3 ]"

