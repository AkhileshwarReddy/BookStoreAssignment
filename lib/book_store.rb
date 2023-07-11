class Bookstore
    attr_reader :books

    def initialize
        @books = []
    end

    def add_book(book)
        @books << book
    end

    def total_price
        @books.inject(0) { |sum, book| sum + book.price }
    end

    def book_titles
        @books.map(&:title)
    end

    def find_books_by_author(author)
        @books.select { |book| book.author == author }
    end

    def cheapest_book
        @books.min_by(&:price)
    end
end

class Book
    attr_reader :title, :author, :price

    def initialize(title, author, price)
        @title = title
        @author = author
        @price = price
    end
end
