require_relative 'bot'
require_relative 'grid'
require_relative 'princess'

class Path2princess
  attr_reader :bot, 
              :princess

  def initialize(bot, princess)
    @bot = bot
    @princess = princess
    @output_moves = []
  end
end 