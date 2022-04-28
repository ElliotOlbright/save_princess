require 'spec_helper'
require_relative '../lib/princess/'
require_relative '../lib/grid/'
require_relative '../lib/bot/'
require_relative '../lib/findprincess/'


describe Findprincess do
  before :each do 
    @grid1 = Grid.new(3, ["---", "-m-", "--p"])
    @grid2 = Grid.new(3, ["---", "-m-", "p--"])
    @grid3 = Grid.new(3, ["p--", "-m-", "---"])
    @grid4 = Grid.new(3, ["--p", "-m-", "---"])
    @path1 = Findprincess.new(@grid1)
    @path2 = Findprincess.new(@grid2)
    @path3 = Findprincess.new(@grid3)
    @path4 = Findprincess.new(@grid4)
  end 

  it 'is an instance of Findprincess and has attributes' do
    expect(@path1).to be_a Findprincess
  end

  it 'should instantiate with attributes' do
    expect(@path1.bot_x).to eq(1)
    expect(@path1.bot_y).to eq(1)

    expect(@path1.princess_x).to eq(2)
    expect(@path1.princess_y).to eq(2)
  end

  it 'should return an array ["DOWN", "RIGHT"]' do
    expect(@path1.path_to_princess).to eq(["DOWN", "RIGHT"])
  end

  it 'should return an array ["DOWN", "LEFT"]' do
    expect(@path2.path_to_princess).to eq(["DOWN", "LEFT"])
  end

  it 'should return an array ["UP", "LEFT"]' do
    expect(@path3.path_to_princess).to eq(["UP", "LEFT"])
  end

  it 'should return an array ["UP", "RIGHT"]' do
    expect(@path4.path_to_princess).to eq(["UP", "RIGHT"])
  end
end 