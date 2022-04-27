require 'spec_helper'
require_relative '../lib/princess/'

describe Princess do
  before(:each) do 
    @grid = Grid.new(3, ["---", "-m-", "p--"])
    @princess = Princess.new(@grid)

    it 'is an instance of Princess' do
      expect(@princess).to be_a Princess
    end

    it 'can find princess coordinates' do
      expect(@princess.princess_x ).to eq(2)
      expect(@princess.princess_y ).to eq(0)
    end

    it 'can find bot coordinates' do
      expect(@princess.bot_x ).to eq(1)
      expect(@princess.bot_y ).to eq(1)
    end
  end 
end 