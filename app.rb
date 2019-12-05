require 'sinatra'
require_relative './lib/instruction'
require_relative './lib/field'

get "/" do
  erb :home
end

post "/play" do
  puts params
  @instruction = Instruction.new
  field = Field.new
  @instruction.set_position_of_vehicle params[:posX].to_i , params[:posY].to_i
  @instruction.set_vehicle_orientation params[:orientation]
  @initial_coordinate_in_X = params[:posX].to_i
  @initial_coordinate_in_Y = params[:posY].to_i
  field.set_rows params[:fieldRows].to_i
  field.set_columns params[:fieldColumns].to_i
  @instruction.set_field field
  instruction_list = params[:instructions]
  instruction_list = instruction_list.split('')
  instruction_list.each { |i|
    @instruction.execute_instruction i
  }
  erb :game
end