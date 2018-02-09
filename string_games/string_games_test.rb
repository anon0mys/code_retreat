require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'string_games'

# Tests string games class
class StringGamesTest < Minitest::Test
  def test_palindromes
    game = StringGames.new

    assert game.palindrome?('racecar')
    refute game.palindrome?('anything')
  end

  def test_sentence_reversal
    game = StringGames.new
    given = 'This is a sentence'
    expected = 'sentence a is This'

    assert_equal expected, game.sentence_reverser(given)
  end

  def test_encryption
    game = StringGames.new
    given = 'aaaabbbbbcccccc'
    expected = '4a5b6c'
    given2 = 'abcccaaa'
    expected2 = 'ab3c3a'

    assert_equal expected, game.encryption(given)
    assert_equal expected2, game.encryption(given2)
  end
end
