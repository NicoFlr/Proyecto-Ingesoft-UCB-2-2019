Feature:
  Como jugador
  Quiero dar una serie de instrucciones al vehiculo
  Para poder mover el vehiculo

  Background:
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "fieldRows"
    And ingreso el numero "5" en el campo "fieldColumns"
    And ingreso el numero "2" en el campo "posX"
    And ingreso el numero "3" en el campo "posY"
    And ingreso la orientacion "n" en el campo "orientation"

  Scenario: El jugador ingresa instrucciones (Solo pueden ser: A (avanzar) , D (derecha) , I (izquierda))
    And ingreso las instrucciones "AD" en el campo "instructions"
    When El jugador presiona el boton "jugar"
    Then El sistema muestra que el vehiculo termina en las coordenadas "[2,4]"

  Scenario: El jugador ingresa instrucciones no validas (Solo pueden ser: A (avanzar) , D (derecha) , I (izquierda))
    And ingreso las instrucciones "liehrgf784" en el campo "instructions"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra el mensaje de error "Instrucciones no correctas (Solo usar A,D,I sin espacios o separadores)"