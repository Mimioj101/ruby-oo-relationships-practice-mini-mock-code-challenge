require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author'

#authors
john_s = Author.new("John Smith")
james_b = Author.new("James Baldwin")
maya_a = Author.new("Maya Angelou")
jane_a = Author.new("Jane Austen")

#books & BookAuthors
s_s = Book.new("Sense and Sensibility", 250000)
BookAuthor.new(john_s, s_s)
BookAuthor.new(jane_a, s_s)

p_p = Book.new("Pride and Prejudice", 32000)
BookAuthor.new(jane_a, p_p)

apple = Book.new("Our Apple is Red", 450)
BookAuthor.new(john_s, apple)
BookAuthor.new(maya_a, apple)

beal_str = Book.new("If Beal Street Could Talk", 1200)
BookAuthor.new(james_b, beal_str)

caged_bird = Book.new("I Know Why The Caged Bird Sings", 1150)
BookAuthor.new(maya_a, caged_bird)

banana = Book.new("Our Banana is Yellow", 2000)
BookAuthor.new(john_s, banana)





binding.pry
"something"

