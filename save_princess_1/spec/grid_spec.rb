require 'spec_helper'
require_relative '../lib/grid/'

describe Grid do
  it 'initiates with valid grid size' do
    grid_a = Grid.new(3, ["m--", "-p-", "---"])

    expect(grid_a).to be_a Grid
    expect(grid_a.grid.size).to eq(3)
    expect(grid_a.grid).to eq(["m--", "-p-", "---"])
  end

  it 'can get correct bot coordinates' do
    grid_a = Grid.new(4, ["----", "-p--", "----", "m---"])

    bot_row = grid_a.bot[0]
    bot_column = grid_a.bot[1]

    expect(bot_row).to eq(3)
    expect(bot_column).to eq(0)
  end

  it 'can find princess' do
    grid_a = Grid.new(3, ["m--", "-p-", "---"])
    grid_b = Grid.new(3, ["--p", "---", "--m"])


    expect(grid_a.princess).to eq([1, 1])
    expect(grid_b.princess).to eq([0, 2])
  end
end 

describe 'Grid Sadpath' do
  it 'returns an error if grid_size above 100' do
    expect {Grid.new(500, ["m--", "-p-", "---"])}.to raise_error(ArgumentError)
    expect {Grid.new(2, ["m--", "-p-", "---"])}.to raise_error(ArgumentError)
    expect {Grid.new(3, ["m--", "-p-", "---"])}.not_to raise_error
  end

  it 'returns error if grid and grid size to do not match' do
    expect {Grid.new(3, ["m---", "-p--", "----", "----"])}.to raise_error(ArgumentError)
    expect {Grid.new(3, ["m--", "p--", "---"])}.not_to raise_error
  end 
end

