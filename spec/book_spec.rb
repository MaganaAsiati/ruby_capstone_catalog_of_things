require_relative '../model/book'
require 'date'

describe Book do
  before :each do
    @book = Book.new(cover_state: 'bad', publisher: nil)
  end
  it 'returns a new Item object' do
    @book.should be_an_instance_of Book
  end

  it 'should return bad' do
    expect(@book.cover_state).to eq('bad')
  end

  
end
