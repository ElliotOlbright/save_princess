require 'spec_helper'
require_relative '../lib/findprincess'
require_relative '../lib/grid'


describe Findprincess do
  before :each do
    @path = Findprincess.new(5, 2, 3, ["-----\n", "-----\n", "p--m-\n", "-----\n", "-----\n"])
  end

  it 'can create an instance of Findprincess' do

    expect(@path.grid).to be_a Grid
  end

  it 'has attributes' do
    expect(@path.grid.grid_size).to eq(5)
    expect(@path.bot_x).to eq(2)
    expect(@path.bot_y).to eq(3)
    expect(@path.princess_x).to eq(0)
    expect(@path.princess_y).to eq(2)

  end 
end 