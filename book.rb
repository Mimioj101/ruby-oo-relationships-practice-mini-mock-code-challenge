require 'pry'
class Book

    @@all = []

    attr_accessor :title, :author, :word_count

    def initialize(title, author, word_count)
        @title = title
        @author = author
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    # def AuthorBook
    #     AuthorBook
    # end

    # We know AuthorBook will need to be included in attr_accessor.
end
