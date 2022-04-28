require 'spec_helper'
require_relative '../lib/findprincess'
require_relative '../lib/grid'


describe Findprincess do
  it 'can create an instance of Findprincess' do
    path = Findprincess.new(5, 2, 3, ["-----\n", "-----\n", "p--m-\n", "-----\n", "-----\n"])

    expect(path.grid).to be_a Grid
  end
end 