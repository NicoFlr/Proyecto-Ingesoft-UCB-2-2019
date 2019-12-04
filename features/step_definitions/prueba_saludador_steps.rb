Given("visito la pagina principal") do
    visit '/'
  end
  
  Given("ingreso el nombre {string} en el campo {string}") do |nombreUsuario, campoNombre|
    fill_in(campoNombre, :with => nombreUsuario)
  end
  
  When("presiono el boton {string}") do |saludar|
    click_button(saludar)
  end
  
  Then("deberia ver {string}") do |nombreUsuario|
    last_response.body.should =~ /#{nombreUsuario}/m
  end