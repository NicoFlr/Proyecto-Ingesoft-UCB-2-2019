Feature:
  Como jugador
  Quiero dar una serie de instrucciones al vehiculo
  Para poder mover el vehiculo

  Background:
    Given visita la pagina principal
    And ingreso el numero "2" en el campo "posX"
    And ingreso el numero "2" en el campo "posY"
    And ingreso la orientacion "n" en el campo "orientation"

  Scenario: El jugador ingresa instrucciones validas (Solo pueden ser: A (avanzar) , D (girar derecha) , I (girar izquierda))
    And ingreso las instrucciones "AADA" en el campo "instructions"
    And El jugador presiona el boton "GuardarVehiculo"
    When El jugador presiona el boton "siguiente"
    Then El sistema muestra la pagina para configurar la arena

  Scenario: El jugador ingresa instrucciones no validas (Solo pueden ser: A (avanzar) , D (girar derecha) , I (girar izquierda))
    And ingreso las instrucciones "Aiehrgf784" en el campo "instructions"
    And El jugador presiona el boton "GuardarVehiculo"
    When El jugador presiona el boton "siguiente"
    Then El sistema le muestra el mensaje de error "Instrucciones no correctas (Solo usar A,D,I sin espacios o separadores)"