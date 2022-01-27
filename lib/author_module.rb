require 'author'

module AuthorModule
  def enter_author(name, number)
    @author = Author.new(name, number)
  end
end