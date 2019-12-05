require 'spec_helper'
require 'instruction'
require 'field'

describe Instruction do
  
  before(:each) do
    @instruction = Instruction.new
    field = Field.new
    field.set_rows 8
    field.set_columns 10
    @instruction.set_field field
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

  it 'should execute the instruction A of "Adelante" then I of "Izquierda" then A of "Adelante" the car with position 3,0 pointing to the north should be in position 3, 1 pointing to the north' do
    @instruction.set_position_of_vehicle 3, 0
    @instruction.set_vehicle_orientation "n"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "I"
    @instruction.execute_instruction "D"
    expect(@instruction.vehicle.get_x_position).to eq(2)
    expect(@instruction.vehicle.get_y_position).to eq(2)
    expect(@instruction.vehicle.get_orientation).to eq("n")
  end

  it 'should execute the instruction A of "Adelante" then A of "Adelante" then A of "Adelante" the car with position 6, 7 pointing to the north should be in position 6, 8 pointing to the north becouse the field has 8 rows and 10 columns' do
    @instruction.set_position_of_vehicle 6, 7
    @instruction.set_vehicle_orientation "n"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    expect(@instruction.vehicle.get_x_position).to eq(6)
    expect(@instruction.vehicle.get_y_position).to eq(8)
    expect(@instruction.vehicle.get_orientation).to eq("n")
  end

  it 'should execute the instruction D of "Derecha" then A of "Adelante" 12 times the car with position 8, 7 pointing to the north should be in position 10, 8 pointing to the north becouse the field has 8 rows and 10 columns' do
    @instruction.set_position_of_vehicle 8, 7
    @instruction.set_vehicle_orientation "n"
    @instruction.execute_instruction "D"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    expect(@instruction.vehicle.get_x_position).to eq(10)
    expect(@instruction.vehicle.get_y_position).to eq(7)
    expect(@instruction.vehicle.get_orientation).to eq("e")
  end

  it 'should execute the instruction I of "Izquierda" then A of "Adelante" 6 times the car with position 2, 1 pointing to the north should be in position 0, 1 pointing to the north becouse the field has 8 rows and 10 columns' do
    @instruction.set_position_of_vehicle 2, 1
    @instruction.set_vehicle_orientation "n"
    @instruction.execute_instruction "I"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    expect(@instruction.vehicle.get_x_position).to eq(0)
    expect(@instruction.vehicle.get_y_position).to eq(1)
    expect(@instruction.vehicle.get_orientation).to eq("w")
  end

  it 'should execute the instruction I of "Izquierda" then A of "Adelante" 6 times the car with position 2, 1 pointing to the west should be in position 2, 0 pointing to the south' do
    @instruction.set_position_of_vehicle 2, 1
    @instruction.set_vehicle_orientation "w"
    @instruction.execute_instruction "I"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    @instruction.execute_instruction "A"
    expect(@instruction.vehicle.get_x_position).to eq(2)
    expect(@instruction.vehicle.get_y_position).to eq(0)
    expect(@instruction.vehicle.get_orientation).to eq("s")
  end
end
