class Author
  attr_reader :id, :items
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_items(item)
    @items.push(item)
  end
end