require 'spec_helper'
require_relative '../lib/grid/'

describe Grid do
  it 'initiates with valid grid size' do
    grid_a = Grid.new(3, ["m--", "-p-", "---"])

    expect(grid_a.grid.size).to eq(3)
  end
end 

