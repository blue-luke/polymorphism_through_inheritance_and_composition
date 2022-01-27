require 'document'
require 'author'

class Article < Document
  def enter_author(name, number)
    @author = Author.new(name, number)
  end
end
