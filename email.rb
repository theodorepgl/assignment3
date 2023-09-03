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
    offensive_words = ['TLN', 'CCB', 'DNS']

    offensive_words.each do |word|
      return true if @content.downcase.include?(word.downcase)
    end

    false
  end
end

email1 = Email.new("a@a.com", "b@b.com", "Hello CCB")
email1.contains_offensive_words

offensive_words = ['TLN', 'CCB', 'DNS']

content = "Hello saya CCB"

puts email1.sender
puts email1.receiver
puts email1.content
puts email1.contains_offensive_words