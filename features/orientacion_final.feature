Feature:
    Como jugador   
    Quiero ver la direccion a la que termina apuntando el vehiculo   
    Para ver a donde termina apuntando el frente del vehiculo

Background:
    Given visita la pagina principal
    And ingreso el numero "2" en el campo "posX"
    And ingreso el numero "2" en el campo "posY"
    And ingreso las instrucciones "AD" en el campo "instructions"

Scenario: compruebo que el vehiculo termina apuntando a donde deberia
    Given ingreso la orientacion "n" en el campo "orientation"
    And El jugador presiona el boton "GuardarVehiculo"
    And El jugador presiona el boton "siguiente"
    And ingreso el numero "7" en el campo "fieldRows"
    And ingreso el numero "5" en el campo "fieldColumns"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra que el vehiculo termina apuntando a la direccion "e"