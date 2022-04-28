require 'spec_helper'
require_relative '../lib/findprincess'
require_relative '../lib/grid'


describe Findprincess do
  before :each do
    @path = Findprincess.new(5, 2, 3, ["-----\n", "-----\n", "p--m-\n", "-----\n", "-----\n"])
    @path2 = Findprincess.new(5, 2, 3, ["-----\n", "-----\n", "---mp\n", "-----\n", "-----\n"])
    @path3 = Findprincess.new(5, 2, 3, ["--p--\n", "-----\n", "---m-\n", "-----\n", "-----\n"])
    @path4 = Findprincess.new(5, 2, 3, ["-----\n", "-----\n", "---m-\n", "-----\n", "--p--\n"])
    @path5 = Findprincess.new(5, 2, 3, ["-----\n", "-----\n", "---m-\n", "-----\n", "p----\n"])
    @path6 = Findprincess.new(5, 2, 3, ["----p\n", "-----\n", "---m-\n", "-----\n", "-----\n"])
    @path7 = Findprincess.new(5, 2, 3, ["-----\n", "---p-\n", "---m-\n", "-----\n", "-----\n"])
    @path8 = Findprincess.new(5, 2, 3, ["-----\n", "-----\n", "---m-\n", "---p-\n", "-----\n"])
  end

  it 'can create an instance of Findprincess' do

    expect(@path.grid).to be_a Grid
  end

  it 'has attributes' do
    expect(@path.grid.grid_size).to eq(5)
    expect(@path.bot_x).to eq(3)
    expect(@path.bot_y).to eq(2)
    expect(@path.princess_x).to eq(0)
    expect(@path.princess_y).to eq(2)
  end 

  it 'should move left on same row' do
    expect(@path.next_step).to eq(["LEFT"])
  end

  it 'should move right on same row' do
    expect(@path2.next_step).to eq(["RIGHT"])
  end

  it 'should move down on same column' do
    expect(@path4.next_step).to eq(["DOWN"])
  end

  it 'should move up on same column' do
    expect(@path3.next_step).to eq(["UP"])
  end

  it 'should move down on different column and row' do
    expect(@path5.next_step).to eq(["DOWN"])
  end

  it 'should move up on different column and row' do
    expect(@path6.next_step).to eq(["UP"])
  end

  it 'should move up on same column and different row' do
    expect(@path7.next_step).to eq(["UP"])
  end

  it 'should move down on same column and different row' do
    expect(@path8.next_step).to eq(["DOWN"])
  end
end 