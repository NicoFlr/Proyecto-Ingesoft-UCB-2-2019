require 'spec_helper'
require 'vehicle'

describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new
  end

  it 'should be in position 0, 0' do
    @vehicle.set_x_position 0
    @vehicle.set_y_position 0
    position_in_x, position_in_y = @vehicle.get_x_position, @vehicle.get_y_position
    expect(position_in_x).to eq(0)
    expect(position_in_y).to eq(0)
  end

  it 'should be in position 3, 8' do
    @vehicle.set_x_position 3
    @vehicle.set_y_position 8
    position_in_x, position_in_y = @vehicle.get_x_position, @vehicle.get_y_position
    expect(position_in_x).to eq(3)
    expect(position_in_y).to eq(8)
  end

  it 'should raise a "PosicionInvalida" error when setting x position to -10' do
    expect{@vehicle.set_x_position(-10)}.to raise_error(InvalidPosition)
  end

  it 'should raise a "PosicionInvalida" error when setting y position to -5' do
    expect{@vehicle.set_y_position(-5).to raise_error(InvalidPosition)}
  end

  it 'should guide to the south' do
    @vehicle.guide "e"
    result = @vehicle.get_orientation
    expect(result).to eq("e")
  end

  it 'should guide to the north' do
    @vehicle.guide "n"
    result = @vehicle.get_orientation
    expect(result).to eq("n")
  end

  it 'should guide to the east' do
    @vehicle.guide "e"
    result = @vehicle.get_orientation
    expect(result).to eq("e")
  end

  it 'should guide to the west' do
    @vehicle.guide "w"
    result = @vehicle.get_orientation
    expect(result).to eq("w")
  end

  it 'should raise an "InvalidOrientation" error when the guide is y' do
    expect{@vehicle.guide("y").to raise_error(InvalidOrientation)}
  end

  it 'should raise an "InvalidOrientation" error when the guide is no e or w or s or n' do
    expect{@vehicle.guide("a").to raise_error(InvalidOrientation)}
  end

  it 'should raise an "InvalidOrientation" error when the orientation is not set and we try to turn right' do
    expect{@vehicle.turn_right.to raise_error(InvalidOrientation)}
  end

  it 'should raise an "InvalidOrientation" error when the orientation is not set and we try to turn left' do
    expect{@vehicle.turn_left.to raise_error(InvalidOrientation)}
  end

  it 'should guide to the east if the vehicle is guided to the north and turns right' do
    @vehicle.guide "n"
    @vehicle.turn_right
    result = @vehicle.get_orientation
    expect(result).to eq("e")
  end

  it 'should guide to the west if the vehicle is guided to the south and turns right' do
    @vehicle.guide "e"
    @vehicle.turn_right
    result = @vehicle.get_orientation
    expect(result).to eq("s")
  end

  it 'should guide to the west if the vehicle is guided to the south and turns right' do
    @vehicle.guide "s"
    @vehicle.turn_right
    result = @vehicle.get_orientation
    expect(result).to eq("w")
  end

  it 'should guide to the north if the vehicle is guided to the west and turns right' do
    @vehicle.guide "w"
    @vehicle.turn_right
    result = @vehicle.get_orientation
    expect(result).to eq("n")
  end
end