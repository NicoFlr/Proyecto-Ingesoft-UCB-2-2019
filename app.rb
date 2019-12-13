require 'sinatra'
require_relative './lib/instruction'
require_relative './lib/field'
require_relative './lib/errores/invalid_position'
require_relative './lib/errores/invalid_measures'
require_relative './lib/errores/invalid_instruction'
require_relative './lib/errores/invalid_orientation'
require_relative './lib/errores/out_of_field'
require_relative './lib/game'

number = 0
game = Game.new

get "/" do
  erb :vehiclesetup
end

get "/setup-arena" do
  erb :arenasetup
end

post "/addVehicle" do
begin
  game.set_up_instruction params[:instructions], params[:posX].to_i, params[:posY].to_i, params[:orientation]
  erb :vehiclesetup
rescue InvalidXPosition
  erb :posicioninvalidax
rescue InvalidYPosition
  erb :posicioninvaliday
rescue InvalidOrientation
  erb :orientacionInvalida
end

post "/play" do
  @field = Field.new

  @initial_instructions = game.get_instruction
  begin
    @field.set_rows params[:fieldRows].to_i
    @field.set_columns params[:fieldColumns].to_i
    game.set_field @field
    game.execute_instructions
    @instructions_after = game.get_instruction
    erb :game
  rescue InvalidXMeasures
    erb :medidasinvalidasfilas
  rescue InvalidYMeasures
    erb :medidasinvalidascolumnas
  rescue InvalidInstruction
    erb :instruccioninvalida
  rescue OutOfFieldError
    erb :fueradeterreno
  end
end