require 'pry'
require_relative './book'
require_relative './author'

#authors
john_s = Author.new("John Smith")
james_b = Author.new("James Baldwin")
maya_a = Author.new("Maya Angelou")
jane_a = Author.new("Jane Austen")

#books
s_s = Book.new("Sense and Sensibility", jane_a, 250000)
p_p = Book.new("Pride and Prejudice", jane_a, 32000)
apple = Book.new("Our Apple is Red", john_s, 450)
beal_str = Book.new("If Beal Street Could Talk", james_b, 1200)
caged_bird = Book.new("I Know Why The Caged Bird Sings", maya_a, 1150)
banana = Book.new("Our Banana is Yellow", john_s, 2000)
kiwi = Book.new("Kiwis are Green", john_s, 3000)
beal_str = Book.new("If Beal Street Could Talk", james_b, john_s, 1200)
caged_bird = Book.new("I Know Why The Caged Bird Sings", maya_a, james_b, 1150)
banana = Book.new("Our Banana is Yellow", john_s, maya_a, 2000)



#Author_Book
john_s = AuthorBook.new("John Smith", beal_str)
james_b = AuthorBook.new("James Baldwin", caged_bird)
maya_a = AuthorBook.new("Maya Angelou", banana)





binding.pry
"something"

