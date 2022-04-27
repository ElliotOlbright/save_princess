require 'spec_helper'
require_relative '../lib/bot/'

describe Bot do
  it 'is an instance of Bot' do
    grid = Grid.new(3, ["---", "-m-", "p--"])
    bot = Bot.new(grid)

    expect(bot).to be_a Bot
  end
end 
