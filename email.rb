# Write a class Email with attributes sender, receiver, and content. 
# Implement a method to check if the content contains any offensive words.

class Email
  attr_accessor :sender, :receiver, :content

  def initialize(sender, receiver, content)
    @sender = sender
    @receiver = receiver
    @content = content
  end

  def contains_offensive_words
    offensive_words = ['offensive_word1', 'offensive_word2', 'offensive_word3'] # Add more offensive words as needed

    offensive_words.each do |word|
      return true if @content.downcase.include?(word.downcase)
    end

    false
  end
end