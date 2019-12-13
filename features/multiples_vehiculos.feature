Feature:
  Como jugador
  Quiero poder definir el tamanio de la arena
  Para poder jugar en ella

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
