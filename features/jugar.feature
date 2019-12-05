Feature: 
  Como jugador
  Quiero poder definir el tamanio de la arena
  Para poder jugar en ella
  
  Como jugador
  Quiero que se muestre la arena creada
  Para sentirme a gusto

  Como jugador 
  quiero definir la posicion incial del vehiculo 
  para tener mas libertad de movimiento al iniciar

  Como jugador
  Quiero dar una serie de instrucciones al vehiculo
  Para poder mover el vehiculo

  Como jugador
  Quiero ver la pocision final del vehiculo
  Para asegurarme que el vehiculo se desplazo bien

  Como jugador
  Quiero ver la direccion a la que termina apuntando el vehiculo
  Para ver a donde termina apuntando el frente del vehiculo

  Scenario: El jugador ingresa dimensiones de arena reales
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "filas"
    And ingreso el numero "5" en el campo "columnas"
    And ingreso el numero "2" en el campo "coordenadaX"
    And ingreso el numero "3" en el campo "coordenadaY"
    And ingreso las instrucciones "AD" en el campo "instrucciones"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra que la arena tiene "7" filas y "5" columnas

  Scenario: El jugador ingresa un numero de filas irreales
    Given visita la pagina principal
    And ingreso el numero "-7" en el campo "filas"
    And ingreso el numero "5" en el campo "columnas"
    And ingreso el numero "2" en el campo "coordenadaX"
    And ingreso el numero "3" en el campo "coordenadaY"
    And ingreso las instrucciones "AD" en el campo "instrucciones"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra el mensaje de error "Dimensiones de arena incorrectas (filas no pueden ser negativas)"

  Scenario: El jugador ingresa un numero de columnas irreales
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "filas"
    And ingreso el numero "-5" en el campo "columnas"
    And ingreso el numero "2" en el campo "coordenadaX"
    And ingreso el numero "3" en el campo "coordenadaY"
    And ingreso las instrucciones "AD" en el campo "instrucciones"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra el mensaje de error "Dimensiones de arena incorrectas (columnas no pueden ser negativas)"

  Scenario: El jugador ingresa un numero de columnas y filas irreales
    Given visita la pagina principal
    And ingreso el numero "-7" en el campo "filas"
    And ingreso el numero "-5" en el campo "columnas"
    And ingreso el numero "2" en el campo "coordenadaX"
    And ingreso el numero "3" en el campo "coordenadaY"
    And ingreso las instrucciones "AD" en el campo "instrucciones"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra el mensaje de error "Dimensiones incorrectas (filas y columnas no pueden ser negativas)"

    Scenario: Como jugador Quiero que se muestre la arena creada para sentirme a gusto
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "filas"
    And ingreso el numero "5" en el campo "columnas"
    And ingreso el numero "2" en el campo "coordenadaX"
    And ingreso el numero "3" en el campo "coordenadaY"
    And ingreso las instrucciones "AD" en el campo "instrucciones"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra la arena con las dimensiones "7" y "5"


    Scenario: El jugador ingresa coordenadas de inicio y dentro de los limites de la arena
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "filas"
    And ingreso el numero "5" en el campo "columnas"
    And ingreso el numero "2" en el campo "coordenadaX"
    And ingreso el numero "3" en el campo "coordenadaY"
    And ingreso las instrucciones "AD" en el campo "instrucciones"
    When El jugador presiona el boton "jugar"
    Then El sistema muestra que el vehiculo comienza en las coordenadas "2" para X y "3" para Y

  Scenario: El jugador ingresa al menos una coordenada de inicio negativa y dentro de los limites de la arena
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "filas"
    And ingreso el numero "5" en el campo "columnas"
    And ingreso el numero "-2" en el campo "coordenadaX"
    And ingreso el numero "3" en el campo "coordenadaY"
    And ingreso las instrucciones "AD" en el campo "instrucciones"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra el mensaje de error "Posicion de inicio incorrecta (alguna coordenada inicial no puede ser negativa)"

  Scenario: El jugador ingresa coordenadas de inicio y fuera de los limites de la arena
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "filas"
    And ingreso el numero "5" en el campo "columnas"
    And ingreso el numero "222" en el campo "coordenadaX"
    And ingreso el numero "350" en el campo "coordenadaY"
    And ingreso las instrucciones "AD" en el campo "instrucciones"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra el mensaje de error "Posicion de inicio incorrecta (Coordenadas se salen de la arena)"


  Scenario: El jugador ingresa instrucciones (Solo pueden ser: A (avanzar) , D (derecha) , I (izquierda) , R (retroceder))
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "filas"
    And ingreso el numero "5" en el campo "columnas"
    And ingreso el numero "2" en el campo "coordenadaX"
    And ingreso el numero "3" en el campo "coordenadaY"
    And ingreso las instrucciones "AD" en el campo "instrucciones"
    When El jugador presiona el boton "jugar"
    Then El sistema muestra que el vehiculo termina en las coordenadas "[3,4]"

Scenario: El jugador ingresa instrucciones no validas (Solo pueden ser: A (avanzar) , D (derecha) , I (izquierda) , R (retroceder))
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "filas"
    And ingreso el numero "5" en el campo "columnas"
    And ingreso el numero "2" en el campo "coordenadaX"
    And ingreso el numero "3" en el campo "coordenadaY"
    And ingreso las instrucciones "Atras y adelante" en el campo "instrucciones"
    When El jugador presiona el boton "jugar"
    Then El sistema le muestra el mensaje de error "Instrucciones no correctas (Solo usar A,D,I o R sin espacios o separadores)"

Scenario: El jugador ingresa datos correctos para jugar y espera ver
    Given visita la pagina principal
    And ingreso el numero "7" en el campo "filas"
    And ingreso el numero "5" en el campo "columnas"
    And ingreso el numero "2" en el campo "coordenadaX"
    And ingreso el numero "3" en el campo "coordenadaY"
    And ingreso las instrucciones "AD" en el campo "instrucciones"
    When El jugador presiona el boton "jugar"
    Then El sistema muestra que el vehiculo esta apuntando al "este"


