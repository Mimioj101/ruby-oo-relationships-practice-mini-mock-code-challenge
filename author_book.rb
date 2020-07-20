require 'pry'
class AuthorBook
    @@all = []

    attr_accessor :name, :book

    def initialize(name, book)
        @name = name
        @book = book
        @@all << self
    end

    def self.all
     @@all
    end

    #Struggling to understand relationship. Authors can have many books and books can have many authors
    #The join method of AuthorBook joins them and for the Author to check it's books, it needs to go through AuthorBook.
    #For the book to find it's authors it needs to go through AuthorBook.
    #Don't remember the methods needed to associate them.

end