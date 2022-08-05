require 'json'
require './model/book'
class Storage
  attr_reader :files

  def initialize
    @files = %w[books.json games.json albums.json]
  end

  def prepare_storage
    @files.each do |filename|
      File.new(filename, 'w+') unless File.file?(filename)
    end
  end

  # Implement your own logic to save your data
  def save_book(app)
    return unless File.file?('books.json')

    people_file = File.open('books.json', 'w')
    people_file.write(JSON.generate(app.books))
    people_file.close
  end

  