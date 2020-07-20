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

    def books
        Book.all.select do |book|
            book.author == self
        end
    end 
    
    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def total_words
        author_total = [] 
        Book.all.select {|book|
            if book.author == self
                author_total << book.word_count
            end
        }
        author_total.sum
    end

    def self.most_words
        all.max { |author_a, author_b| author_a.total_words <=> author_b.total_words} 
    end


end
