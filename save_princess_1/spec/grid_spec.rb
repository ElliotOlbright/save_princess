require 'spec_helper'
require_relative '../lib/grid/'

describe Grid do
  it 'should instantiate with correct grid size' do
    grid_1 = Grid.new(3, ["---", "-m-", "p--"])

    expect(grid_1.grid.size).to eq(3)
  end
end 