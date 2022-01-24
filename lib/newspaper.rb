class Newspaper
  attr_reader :title

  def initialize(title)
    @title = title
    @on_loan = false
  end

  def on_loan?
    @on_loan
  end

  def check_in
    raise 'newspapers are not available for loan'
  end

  def check_out
    raise 'newspapers are not available for loan'
  end
end
