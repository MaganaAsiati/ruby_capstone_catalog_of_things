require_relative '../model/item'
require 'date'

describe Item do
  before :each do
    @instance = Item.new(publish_date: '2010-10-14')
  end
  it 'returns a new Item object' do
    @instance.should be_an_instance_of Item
  end
  it 'should initialize' do
    expect(@instance.publish_date).to eq(Date.parse('2010-10-14'))
  end

  it 'should move item to archive if item can be archived' do
    @instance.move_to_archive
    expect(@instance.archived).to be(true)
  end
end
