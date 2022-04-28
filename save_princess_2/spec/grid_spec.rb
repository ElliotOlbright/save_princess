require 'spec_helper'
require_relative '../lib/grid/'

describe Grid do
  before :each do 
    @grid = Grid.new(5, ["-----", "-----", "p-m--", "-----", "-----"])
  end 

  it 'can create a grid' do

    expect(@grid).to be_a Grid
  end

  it 'has attributes' do
    expect(@grid.grid_size).to eq(5)
    expect(@grid.grid).to be_an Array
    expect(@grid.grid).to eq(["-----", "-----", "p-m--", "-----", "-----"])
  end 

  it 'can find the princess' do 
    expect(@grid.find_princess).to eq([2,0])
  end 
end 