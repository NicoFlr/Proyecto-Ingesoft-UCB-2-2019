require 'spec_helper'
require 'field'

describe Field do
  before(:each) do
    @field = Field.new
  end

  it 'should have 5 rows' do
    @field.set_rows 5
    number_of_rows = @field.get_rows
    expect(number_of_rows).to eq(5)
  end

  it 'should have 8 rows' do
    @field.set_rows 8
    number_of_rows = @field.get_rows
    expect(number_of_rows).to eq(8)
  end

  it 'should raise an "InvalidMeasures" exception if the number of rows is -1' do
    expect{@field.set_rows(-1).to raise_error(InvalidMeasures)}
  end

  it 'should raise an "InvalidMeasures" exception if the number of rows is 0' do
    expect{@field.set_rows(0).to raise_error(InvalidMeasures)}
  end

  it 'should raise an "InvalidMeasures" exception if the number of columns is -1' do
    expect{@field.set_columns(-1).to raise_error(InvalidMeasures)}
  end

  it 'should raise an "InvalidMeasures" exception if the number of columns is 0' do
    expect{@field.set_columns(0).to raise_error(InvalidMeasures)}
  end
end
