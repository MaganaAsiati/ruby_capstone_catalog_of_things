require_relative '../model/book'
require_relative '../storage'

class BookHandler
  @storage = Storage.new
  def self.add_book(app)
    puts 'Please, create your book : '
    puts 'Publisher : '
    publisher = gets.chomp
    puts 'Cover state : '
    cover_state = gets.chomp
    book = Book.new(cover_state: cover_state, publisher: publisher)
    app.create_book(book)
    puts 'Book created successfully !!!'
    @storage.save_book(app)
  end

  