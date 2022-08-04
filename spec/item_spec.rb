require_relative '../model/item'
require 'date'

describe Item do
  context '... this class...' do
    instance = Item.new('2010-10-14')

    it 'should initialize' do
      expect(instance.publish_date).to eq(Date.parse('2010-10-14'))
    end

    it 'should move item to archive if item can be archived' do
      instance.move_to_archive
      expect(instance.archived).to be(true)
    end
  end
end
