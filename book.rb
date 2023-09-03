#Create a class Book with attributes title, author, and pages. 
#Add a method to display the book's information.
require 'colorize'

class Book
  attr_accessor :title, :author, :pages
  
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
  
  def display_book
    puts "Title: #{@title}".light_blue
    puts "Author: #{@author}".light_red
    puts "Pages: #{@pages}".light_yellow
  end
end

book_type = Book.new("Rich Dad Poor Dad", "Robert Kiyosaki and Sharon L. Lechter", 336)

book_type.display_book