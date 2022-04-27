require 'spec_helper'
require_relative '../lib/grid/'

describe Grid do
  it 'initiates with valid grid size' do
    grid_a = Grid.new(3, ["m--", "-p-", "---"])

    expect(grid_a.grid.size).to eq(3)
  end

  it 'can get correct bot coordinates' do
    grid_b = Grid.new(3, ["m--", "-p-", "---"])

    expect(grid_b.bot_row).to eq(1)
    expect(grid_b.bot_column).to eq(1)
  end

end 

