require 'spec_helper'
require_relative '../lib/grid/'

describe Grid do
  before :each do
    @grid = Grid.new(3, ["m--", "-p-", "---"])
    @bot_row = @grid.bot[0]
    @bot_column = @grid.bot[1]
  end 
  it 'initiates with valid grid size' do
    expect(@grid).to be_a Grid
    expect(@grid.grid.size).to eq(3)
    expect(@grid.grid).to eq(["m--", "-p-", "---"])
  end

  it 'can get correct bot coordinates' do
    expect(@bot_row).to eq(0)
    expect(@bot_column).to eq(0)
  end

  it 'can find princess' do
    expect(@grid.princess).to eq([1, 1])
  end
end 

describe 'Grid Sadpath' do
  it 'returns an error if grid_size above 100' do
    expect {Grid.new(500, ["m--", "-p-", "---"])}.to raise_error(ArgumentError)
    expect {Grid.new(3, ["m--", "-p-", "---"])}.not_to raise_error
  end

  it 'returns an error if grid_size below 3' do
    expect {Grid.new(2, ["m--", "-p-", "---"])}.to raise_error(ArgumentError)
    expect {Grid.new(3, ["m--", "-p-", "---"])}.not_to raise_error
  end 

  it 'returns error if grid and grid size to do not match' do
    expect {Grid.new(3, ["m---", "-p--", "----", "----"])}.to raise_error(ArgumentError)
    expect {Grid.new(3, ["m--", "p--", "---"])}.not_to raise_error
  end 
end

