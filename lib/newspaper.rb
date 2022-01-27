require 'document'

class Newspaper < Document
  def check_in
    raise 'newspapers are not available for loan'
  end

  def check_out
    raise 'newspapers are not available for loan'
  end
end
