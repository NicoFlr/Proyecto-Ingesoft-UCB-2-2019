require 'sinatra'

get "/" do
  erb :home
end

post "/play" do
  @rows = params[:filas]
  @columns = params[:columnas]
  @initial_coordinate_in_X = params[:coordenadaX]
  @initial_coordinate_in_Y = params[:coordenadaY]
  @instrucciones = params[:instrucciones]
erb :game
end

post "/saludar" do
  @nombre_persona = params[:nombre]
  erb :saludo
end

