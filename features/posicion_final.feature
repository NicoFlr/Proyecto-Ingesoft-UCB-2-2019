Feature:
  Como jugador
  Quiero ver la pocision final del vehiculo
  Para asegurarme que el vehiculo se desplazo bien

  Scenario: El jugador comprueba que la posicion final esta bien
    Given visita la pagina principal
    And ingreso el numero "2" en el campo "posX"
    And ingreso el numero "3" en el campo "posY"
    And ingreso las instrucciones "AD" en el campo "instructions"
    And ingreso la orientacion "n" en el campo "orientation"
    And El jugador presiona el boton "GuardarVehiculo"
    And El jugador presiona el boton "siguiente"
    And El sistema muestra la pagina para configurar la arena
    And ingreso el numero "7" en el campo "fieldRows"
    And ingreso el numero "5" en el campo "fieldColumns"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra que el vehiculo termina en las coordenadas "[ 2 , 4 ]"
