require 'pry'

# Deals with different string manipulations
class StringGames
  def palindrome?(word)
    (0...word.length).each do |index|
      return false unless word[index] == word[-index - 1]
    end
  end

  def sentence_reverser(sentence)
    word = ''
    new_sentence = ''
    (sentence + ' ').each_char do |char|
      if char == ' '
        new_sentence.prepend(char + word)
        word = ''
      else
        word << char
      end
    end
    new_sentence[1..-1]
  end

  def encryption(string)
    
  end
end
