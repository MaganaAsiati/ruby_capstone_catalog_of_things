require_relative '../model/item'
require_relative '../model/label'
require 'date'

describe Label do
  before :each do
    @item = Item.new(publish_date: '2010-10-14')
    @label = Label.new(title: 'The title', color: 'red')
  end
  it 'is initialized' do
    expect(@label).to be_kind_of Label
  end

  
end
