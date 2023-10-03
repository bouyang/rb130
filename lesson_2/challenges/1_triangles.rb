class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort

    raise ArgumentError.new 'Side inequality' if self.unequal?

    @sides.each do |side|
      if side <= 0
        raise ArgumentError.new 'Invalid side'
      end
    end
  end

  def unequal?
    @sides.last >= (@sides[0] + @sides[1])
  end

  def kind
    if @sides.uniq.size == 1
      'equilateral'
    elsif @sides.uniq.size == 2
      'isosceles'
    elsif @sides.uniq.size == 3
      'scalene'
    end
  end
end

