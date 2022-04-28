require 'spec_helper'
require_relative '../lib/bot/'

describe Bot do
  before(:each) do
    @grid = Grid.new(3, ["---", "-m-", "p--"])
    @bot = Bot.new(@grid)
  end

  it 'is an instance of Bot' do
    expect(@bot).to be_a Bot
  end

  it 'can show coordinates for bot' do
    expect(@bot.bot_x).to eq(1)
    expect(@bot.bot_y).to eq(1)
  end

  it 'can show coordinates for princess' do
    expect(@bot.princess_x).to eq(0)
    expect(@bot.princess_y).to eq(2)
  end 
end 
