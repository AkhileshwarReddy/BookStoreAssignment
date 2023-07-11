require 'book_store.rb'

RSpec.describe Bookstore do
    let(:bookstore) { Bookstore.new }
    let(:douglas_book) { Book.new('The Hitchhiker\'s Guide to the Galaxy', 'Douglas Adams', 12.99) }
    let(:tolkien_book) { Book.new('The Lord of the Rings', 'J.R.R. Tolkien', 29.99) }

    describe '#add_book' do
        it 'adds a book to the bookstore' do
            bookstore.add_book(douglas_book)
            expect(bookstore.books.length).to eq(1)
        end
    end

    describe '#total_price' do
        it 'returns the total price of all the books in the bookstore' do
            bookstore.add_book(douglas_book)
            bookstore.add_book(tolkien_book)
            expect(bookstore.total_price).to eq(42.98)
        end
    end

    describe '#book_titles' do
        it 'returns an array of the titles of all the books in the bookstore' do
            bookstore.add_book(douglas_book)
            bookstore.add_book(tolkien_book)
            expect(bookstore.book_titles).to eq(['The Hitchhiker\'s Guide to the Galaxy', 'The Lord of the Rings'])
        end
    end

    describe '#find_books_by_author' do
        it 'returns an array of all the books by the specified author' do
            bookstore.add_book(douglas_book)
            bookstore.add_book(tolkien_book)
            expect(bookstore.find_books_by_author('Douglas Adams')).to eq([douglas_book])
        end
    end

    describe '#cheapest_book' do
        it 'returns the cheapest book in the bookstore' do
            bookstore.add_book(douglas_book)
            bookstore.add_book(tolkien_book)
            expect(bookstore.cheapest_book).to eq(douglas_book)
        end
    end
end