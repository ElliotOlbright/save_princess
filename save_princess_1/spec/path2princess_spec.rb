require 'spec_helper'
require_relative '../lib/princess/'
require_relative '../lib/grid/'
require_relative '../lib/bot/'
require_relative '../lib/path2princess/'


describe Path2princess do
  before :each do 
    @grid = Grid.new(3, ["p--", "-m-", "---"])
    @bot = Bot.new(@grid)
    @princess = Princess.new(@grid)
    @path = Path2princess.new(@bot, @princess)
  end 

  it 'is an instance of Path2princess and has attributes' do
    expect(@path).to be_a Path2princess

    expect(@path.bot).to eq(@bot)
    expect(@path.bot.bot_x).to eq(1)
    expect(@path.bot.bot_y).to eq(1)

    expect(@path.princess).to eq(@princess)
    expect(@path.princess.princess_x).to eq(0)
    expect(@path.princess.princess_y).to eq(0)
  end
end 