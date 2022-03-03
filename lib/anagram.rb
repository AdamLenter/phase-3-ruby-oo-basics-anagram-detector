require 'pry'

# Your code goes here!
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(list_of_words)
        matches = []
        original_word = @word.upcase.chars.sort

        list_of_words.each do |b|
            sorted_word = b.upcase.chars.sort
            if(sorted_word == original_word)
                matches.push(b);
            end
        end

        matches
    end
end
