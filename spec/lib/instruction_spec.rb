require 'spec_helper'
require 'instruction'

describe Instruction do
  
  before(:each) do
    @instruction = Instruction.new
  end

  it 'should execute the instruction I of "Izquierda" and the car with position 3,0 pointing to the north should be in position 2, 0 pointing to the west' do
    @instruction.set_position_of_vehicle 3, 0
    @instruction.set_vehicle_orientation "n"
    @instruction.execute_instruction "I"
    expect(@instruction.vehicle.get_x_position).to eq(2)
    expect(@instruction.vehicle.get_orientation).to eq("w")
  end

  it 'should execute the instruction D of "Derecha" and the car with position 3,0 pointing to the north should be in position 4, 0 pointing to the east' do
    @instruction.set_position_of_vehicle 3, 0
    @instruction.set_vehicle_orientation "n"
    @instruction.execute_instruction "D"
    expect(@instruction.vehicle.get_x_position).to eq(4)
    expect(@instruction.vehicle.get_orientation).to eq("e")
  end

  it 'should execute the instruction A of "Adelante" and the car with position 3,0 pointing to the north should be in position 3, 1 pointing to the north' do
    @instruction.set_position_of_vehicle 3, 0
    @instruction.set_vehicle_orientation "n"
    @instruction.execute_instruction "A"
    expect(@instruction.vehicle.get_x_position).to eq(3)
    expect(@instruction.vehicle.get_y_position).to eq(1)
    expect(@instruction.vehicle.get_orientation).to eq("n")
  end

  it 'should thow an "InvalidInstruction" error when executing an instruction that is not IDA like g' do
    expect{@instruction.execute_instruction("g").to raise_error(InvalidInstruction)}
  end
end
