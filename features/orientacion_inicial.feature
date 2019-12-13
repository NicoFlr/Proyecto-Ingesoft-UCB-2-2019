Feature:
  Como jugador
  Quiero definir la orientacion inicial del vehiculo
  Para tener mas posibilidades de movimiento

  Background:
    Given visita la pagina principal
    And ingreso el numero "1" en el campo "posX"
    And ingreso el numero "1" en el campo "posY"
    And ingreso las instrucciones "AD" en el campo "instructions"

  Scenario:
    Given ingreso la orientacion "e" en el campo "orientation"
    And El jugador presiona el boton "GuardarVehiculo"
    When El jugador presiona el boton "siguiente"
    Then El sistema muestra la pagina para configurar la arena

  Scenario:
    Given ingreso la orientacion "noroeste" en el campo "orientation"
    When El jugador presiona el boton "GuardarVehiculo"
    Then El sistema le muestra el mensaje de error "Orientacion no valida (Solo usar n , e , w , s)"