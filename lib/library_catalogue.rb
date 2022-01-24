require_relative 'book'
require_relative 'newspaper'
require_relative 'article'

class LibraryCatalogue
  attr_reader :items

  def initialize
    @items = []
  end

  def add_to_stock(item)
    items << item
  end

  def check_out(item)
    raise 'item is not held' if !item_available?(item)
    item.check_out
  end

  def check_in(item)
    raise 'item is not held' if !item_available?(item)
    item.check_in
  end

  private
  def item_available?(item)
    items.include?(item)
  end
end
