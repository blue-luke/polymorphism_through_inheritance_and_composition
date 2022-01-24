class Car
  attr_reader :top_speed

  def initialze(top_speed)
    @top_speed = top_speed
  end

  def move
    "moving at #{top_speed}"
  end
end

class Bike
  attr_reader :top_speed

  def initialze(top_speed)
    @top_speed = top_speed
  end

  def move
    "moving at #{top_speed}"
  end
end

class Plane
  attr_reader :top_speed

  def initialze(top_speed)
    @top_speed = top_speed
  end

  def move
    "taking off... moving at #{top_speed}"
  end
end
