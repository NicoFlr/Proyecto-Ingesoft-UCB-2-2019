require 'spec_helper'
require 'game'
require 'field'
require 'instruction'

describe Game do
  before(:each) do
    @game = Game.new
    field = Field.new
    field.set_rows 10
    field.set_columns 20
    @game.set_field field
  end

  it 'should execute instruction "ADDAAAIAA" with the vehicle in position 1,1 and ointing to the north
      also execute instruction "AAAAADAAAAAAIA" with the vehicle in position 0,0 pointing to the south
      also execute instruction "IAAADAAAAIAA" with the vehicle in position 5,4 pointing to the south
      also execute instruction "AAAAA" with the vehicle in position 3,2 pointing to the west' do
      @game.set_up_instruction "ADDAAAIAA", 1, 1, "n"
      @game.set_up_instruction "AAAAADAAAAAAIA", 0, 0, "s"
      @game.set_up_instruction "IAAADAAAAIAA", 5, 4, "s"
      @game.set_up_instruction "AAAAA", 3, 2, "w"
      instruction1 = @game.get_instruction_by_index 0
      instruction2 = @game.get_instruction_by_index 1
      instruction3 = @game.get_instruction_by_index 2
      instruction4 = @game.get_instruction_by_index 3
      expect(instruction1.vehicle.get_x_position).to eq(1)
      expect(instruction1.vehicle.get_y_position).to eq(1)
      expect(instruction1.vehicle.get_orientation).to eq("n")
      
      @game.execute_instructions
  end
end
