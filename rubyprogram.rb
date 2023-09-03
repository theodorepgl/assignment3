# Write a Ruby program that takes a sentence as input and outputs the number of words in it.
require 'colorize'

def count_words(sentence)
  words = sentence.split(" ")
  words.count
end

print "Enter a sentence: "
sentence = gets.chomp

word_count = count_words(sentence)
puts "The number of words in the sentence is: #{word_count}".light_cyan