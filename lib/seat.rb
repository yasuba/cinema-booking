class Seat

  def initialize
    @available = true
  end

  def available?
    @available
  end

  def book!
    @available = false
    return self
  end

end