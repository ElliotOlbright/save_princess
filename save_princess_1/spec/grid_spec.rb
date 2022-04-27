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
    grid_b = Grid.new(4, ["m--", "-p-", "---", "---"])

    expect(grid_b.bot_row).to eq(1)
    expect(grid_b.bot_column).to eq(1)
  end

  it 'can find princess' do
    grid_a = Grid.new(3, ["m--", "-p-", "---"])
    grid_b = Grid.new(3, ["--p", "---", "--m"])


    expect(grid_a.princess).to eq([1, 1])
    expect(grid_b.princess).to eq([0, 2])
  end
end 

