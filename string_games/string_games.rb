require 'pry'

class StringGame
  def palindrome?(word)
    (0...word.length).each do |index|
      # binding.pry
      return false unless word[index] == word[-index-1]
    end
  end
end
