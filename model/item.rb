require 'date'
class Item
  attr_reader :id, :archived
  attr_accessor :genre, :author, :label, :publish_date

  def initialize(publish_date, archived: false)
    @publish_date = Date.parse(publish_date)
    @id = Random.rand(1..1000)
    @archived = archived
  end

  def set_genre(genre:)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def set_author(author:)
    @author = author
  end

  def set_label(label:)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def can_be_archived?
    Date.today.year - @publish_date.year
  end

  private :can_be_archived?
end

# s = Item.new(publish_date: '2020-10-14')
# puts s.publish_date
