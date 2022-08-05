require 'json'
require './model/book'
class Storage
  attr_reader :files

  def initialize
    @files = %w[books.json games.json albums.json]
  end
end
