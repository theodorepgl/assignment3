# Build a class Library that holds a collection of books. 
# Implement methods to add, remove, and list books.

class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
    puts "#{book.title} has been added to the library."
  end

  def remove_book(book)
    if @books.include?(book)
      @books.delete(book)
      puts "#{book.title} has been removed from the library."
    else
      puts "#{book.title} is not found in the library."
    end
  end

  def list_books
    if @books.empty?
      puts "The library is empty."
    else
      puts "Books in the library:"
      @books.each { |book| puts "- #{book.title}" }
    end
  end
end

class Book
  attr_reader :title

  def initialize(title)
    @title = title
  end
end

library = Library.new

book1 = Book.new("Harry Potter and the Sorcerer's Stone")
book2 = Book.new("Rich Dad Poor Dad")
book3 = Book.new("Anwar Ibrahim")

library.add_book(book1)
library.add_book(book2)
library.add_book(book3)

library.list_books

library.remove_book(book2)

library.list_books