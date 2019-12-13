require_relative './instruction'
require_relative './field'

class Game

  def initialize
    @instrucciones = []
  end

  def get_instruction
    @instrucciones
  end

  def set_field field
    @field = field
  end

  def get_field
    @field
  end

  def get_instruction_by_index index
    @instrucciones.at index
  end

  def set_up_instruction instruction_series, vehicle_position_in_x, vehicle_position_in_y, orientation
    instruction = Instruction.new
    instruction.set_up_instruction_series instruction_series, vehicle_position_in_x, vehicle_position_in_y, orientation
    add_instruction instruction
  end

  def execute_instructions
    @instrucciones.each do |instruction|
      instruction.set_field @field
      instruction.execute_instruction_series
    end
  end

  private
  def add_instruction instruccion
    @instrucciones.push instruccion
  end
end