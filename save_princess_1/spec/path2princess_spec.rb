require 'spec_helper'
require_relative '../lib/princess/'
require_relative '../lib/grid/'
require_relative '../lib/bot/'
require_relative '../lib/path2princess/'


describe Path2princess do
  before :each do 
    @grid = Grid.new(3, ["---", "-m-", "p--"])
    @princess = Princess.new(@grid)
    @path = Path2princess.new(@bot, @princess)
  end 

  it 'is an instance of Path2princess' do
    expect(@path).to be_a Path2princess
  end
end 