
Given("visita la pagina principal") do
  visit '/'
end

Given("ingreso el numero {string} en el campo {string}") do |filas, campoFilas|
  fill_in(campoFilas, :with => filas)
end

Given("ingreso las instrucciones {string} en el campo {string}") do |instrucciones, campoInstrucciones|
  fill_in(campoInstrucciones, :with => instrucciones)
end

Given("ingreso la orientacion {string} en el campo {string}") do |orientacion, campoOrientacion|
  fill_in(campoOrientacion, :with => orientacion)
end


When("El jugador presiona el boton {string}") do |jugar|
  click_button(jugar)
end

Then("El sistema le muestra que la arena tiene {string} filas y {string} columnas") do |filas, columnas|
  @rows=filas
  @columns=columnas
end

Then("El sistema le muestra el mensaje de error {string}") do |error|
  error
end

Then("El sistema le muestra la arena con las dimensiones {string} y {string}") do |filas, columnas|
  @rows=filas
  @columns=columnas
end

Then("El sistema muestra que el vehiculo comienza en las coordenadas {string} para X y {string} para Y") do |posX, posY|
  @posicion_x=posX
  @posicion_y=posY
end

Then("El sistema muestra que el vehiculo termina en las coordenadas {string}") do |coordenadas|
  last_response.body.should =~ /#{coordenadas}/m
end

Then("El sistema muestra que el vehiculo esta apuntando al {string}") do |orientacion|
  @orientation = orientacion
end

Then("El sistema muestra la pagina para configurar la arena") do
  visit '/setup-arena'
end

Then("El sistema le muestra que el vehiculo termina apuntando a la direccion {string}") do |direccion|
  last_response.body.should =~ /#{direccion}/m
end

Then("El sistema le muestra que el vehiculo termina en las coordenadas {string}") do |coordenadas|
  last_response.body.should =~ /#{coordenadas}/m
end


