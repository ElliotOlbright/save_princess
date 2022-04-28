require 'spec_helper'
require_relative '../lib/grid/'

describe Grid do
  before :each do 
    @grid = Grid.new(["-----", "-----", "p-m--", "-----", "-----"])
  end 

  it 'can create a grid' do

    expect(@grid).to be_a Grid
  end

  it 'has attributes' do
    expect(@grid.grid).to be_an Array
    expect(@grid.grid).to eq(["-----", "-----", "p-m--", "-----", "-----"])
  end 

  it 'can find the princess' do 
    expect(@grid.locate_princess).to eq([0,2])
  end 

  it 'can find princess x coordinate' do 
    expect(@grid.princess_x).to eq(0)
  end 

  it 'can find princess y coordinate' do 
    expect(@grid.princess_y).to eq(2)
  end

end 