require 'document'

class Book < Document
  def enter_author(name, number)
    @author = Author.new(name, number)
  end
end
