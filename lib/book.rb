require 'document'
require 'author_module'

class Book < Document
  include AuthorModule
end
