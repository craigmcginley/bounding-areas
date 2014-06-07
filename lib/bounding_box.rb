class BoundingBox

  attr_reader :left, :bottom

  def initialize(left, bottom, right, top)
    @right = right
    @top = top
    @left = left
    @bottom = bottom
  end

  def right
    @left + @right
  end

  def top
    @top + @bottom
  end

  def width
    self.right - @left
  end

  def height
    self.top - @bottom
  end

  def contains_point?(x, y)
    if x >= @left and x <= self.right
      if y >= @bottom and y <= self.top
        return true
      end
    end
    return false
  end

end
