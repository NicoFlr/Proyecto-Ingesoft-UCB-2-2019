
Given("visita la pagina principal") do
  visit '/'
end

Given("ingreso el numero {string} en el campo {string}") do |filas, campoFilas|
  fill_in(campoFilas, :with => filas)
end

Given("ingreso las instrucciones {string} en el campo {string}") do |instrucciones, campoInstrucciones|
  fill_in(campoInstrucciones, :with => instrucciones)
end

When("El jugador presiona el boton {string}") do |jugar|
  click_button(jugar)
end

Then("El sistema le muestra que la arena tiene {string} filas y {string} columnas") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("El sistema le muestra el mensaje de error {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("El sistema le muestra la arena con las dimensiones {string} y {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("El sistema muestra que el vehiculo comienza en las coordenadas {string} para X y {string} para Y") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("El sistema muestra que el vehiculo termina en las coordenadas {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("El sistema muestra que el vehiculo esta apuntando al {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

