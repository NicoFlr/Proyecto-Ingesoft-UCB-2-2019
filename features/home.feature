Feature: La pagina de inicio deberia calcular la posicion final de un vehiculo
  Scenario: Mensaje con la posicion final delvehiculo
    Given Un usuario llena el formulario para jugar el juego
    When El usuario presiona el boton "simular"
    Then El sistema le muestra la posicion final del vehiculo
