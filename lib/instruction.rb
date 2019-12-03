require_relative './vehicle'
require_relative './errores/invalid_instruction'

class Instruction

  attr_accessor :vehicle

  def initialize
    @moves = {:left => "I", :right => "D", :front => "A"}
    @vehicle = Vehicle.new
  end

  def execute_instruction instruction
    if instruction_exist instruction
      case instruction
      when @moves[:left]
        @vehicle.turn_left
        @vehicle.advance
      when @moves[:right]
        @vehicle.turn_right
        @vehicle.advance
      when @moves[:front]
        @vehicle.advance
      end
    else
      raise InvalidInstruction.new
    end
  end

  def set_position_of_vehicle x, y
    @vehicle.set_x_position x
    @vehicle.set_y_position y
  end

  def set_vehicle_orientation orientation
    @vehicle.guide orientation
  end

  private
  def instruction_exist instruction
    "IDA".include? instruction
  end
end