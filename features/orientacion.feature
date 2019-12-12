Feature:
  Como jugador
  Quiero
  Para

  Background:
    Given visita la pagina principal
    And ingreso el numero "2" en el campo "posX"
    And ingreso el numero "2" en el campo "posY"
    And ingreso las instrucciones "AD" en el campo "instructions"

  Scenario:
    Given ingreso la orientacion "n" en el campo "orientation"
    And El jugador presiona el boton "guardar vehiculo"
    When El jugador presiona el boton "siguiente"
    Then El sistema muestra la pagina para configurar la arena

  Scenario:
    Given ingreso la orientacion "noroeste" en el campo "orientation"
    And El jugador presiona el boton "guardar vehiculo"
    When El jugador presiona el boton "siguiente"
    Then El sistema le muestra el mensaje de error "xd"