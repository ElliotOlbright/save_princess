require 'spec_helper'
require_relative '../lib/princess/'
require_relative '../lib/grid/'

describe Princess do
  before :each do 
    @grid = Grid.new(3, ["---", "-m-", "p--"])
    @princess = Princess.new(@grid)
  end 

  it 'is an instance of Princess' do
    expect(@princess).to be_a Princess
  end

  it 'can find princess coordinates' do
    expect(@princess.princess_x ).to eq(0)
    expect(@princess.princess_y ).to eq(2)
  end
end 