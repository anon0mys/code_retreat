require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'string_games'

class StringGamesTest < Minitest::Test
  def test_can_tell_a_palindrome
    game = StringGame.new

    assert game.palindrome?("racecar")
    refute game.palindrome?("anything")
  end
end
