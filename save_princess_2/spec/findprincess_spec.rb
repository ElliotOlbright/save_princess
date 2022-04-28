require 'spec_helper'
require_relative '../lib/findprincess'
require_relative '../lib/grid'


describe Findprincess do
  before :each do
    @path = Findprincess.new(5, 2, 3, ["-----\n", "-----\n", "p--m--\n", "-----\n", "-----\n"])
    @path2 = Findprincess.new(5, 2, 3, ["-----\n", "-----\n", "---mp-\n", "-----\n", "-----\n"])
    @path3 = Findprincess.new(5, 2, 3, ["--p--\n", "-----\n", "---m--\n", "-----\n", "-----\n"])
    @path4 = Findprincess.new(5, 2, 3, ["-----\n", "-----\n", "---m--\n", "-----\n", "--p--\n"])
    @path5 = Findprincess.new(5, 2, 3, ["-----\n", "-----\n", "---m--\n", "-----\n", "p----\n"])
    @path6 = Findprincess.new(5, 2, 3, ["----p\n", "-----\n", "---m--\n", "-----\n", "-----\n"])
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

  it 'should move left on same row' do
    @path.next_step

    expect(@path.step).to eq(["LEFT"])
  end

  it 'should move right on same row' do
    @path2.next_step

    expect(@path2.step).to eq(["RIGHT"])
  end

  it 'should move down on same column' do
    @path4.next_step

    expect(@path4.step).to eq(["DOWN"])
  end

  it 'should move down on different column and row' do
    @path5.next_step

    expect(@path5.step).to eq(["DOWN"])
  end

  it 'should move up on different column and row' do
    @path6.next_step

    expect(@path6.step).to eq(["UP"])
  end
end 