# Your code goes here!
class Anagram
    attr_reader :word
  
    def initialize(word)
      @word = word
    end
  
    def match(words)
      words.select { |w| anagram?(w) }
    end
  
    private
  
    def anagram?(other_word)
      word.downcase.chars.sort == other_word.downcase.chars.sort && word.downcase != other_word.downcase
    end
  end
  