require 'spec_helper'
require_relative '../lib/bot/'

describe Bot do
  it 'is an instance of Bot' do
    grid = Grid.new(3, ["---", "-m-", "p--"])
    bot = Bot.new(grid)

    expect(bot).to be_a Bot
  end

  it 'can show coordinates for bot' do
    grid_2 = Grid.new(3, ["---", "-m-", "--p"])
    bot_2 = Bot.new(grid_2)

    expect(bot_2.bot_x).to eq(1)
    expect(bot_2.bot_y).to eq(1)
  end

  it 'can show coordinates for princess' do
    grid = Grid.new(4, ["----","--m-", "----", "---p"])
    bot = Bot.new(grid)

    expect(bot.princess_x).to eq(3)
    expect(bot.princess_y).to eq(3)
  end 
end 
