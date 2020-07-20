require 'pry'

class Author
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #def books Many to One
    #     Book.all.select do |book|
    #         book.author == self
    #     end
    # end 

   #def books many to many:
    def books
        self.book_authors.map {|book_author| book_author.book}
    end
    

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    #My original code:
    # def total_words
    #     author_total = [] 
    #     Book.all.select {|book|
    #         if book.author == self
    #             author_total << book.word_count
    #         end
    #     }
    #     author_total.sum
    # end


    #we already have the .books method, use that!

    def total_words
        books.sum {|book| book.word_count}
    end

    #Ian's code:
    # def total_words
    #     self.books.reduce(0) do |all_the_words, book|
    #         all_the_words + book.word_count
    #     end
    # end


    def self.most_words
        self.all.max { |author_a, author_b| author_a.total_words <=> author_b.total_words} 
    end


    #Ian's code:
    # def self.most_words
    #     self.all.max_by {|author| author.total_words}
    # end

    def book_authors
        BookAuthor.all.select {|book_author| book_author.author == self}
    end


end
