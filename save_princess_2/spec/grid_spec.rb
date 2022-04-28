require 'spec_helper'
require_relative '../lib/grid/'

describe Grid do
    it 'can create a grid' do
      grid = Grid.new(5, ["-----", "-----", "p-m--", "-----", "-----"])

      expect(grid).to be_a Grid
    end
  end