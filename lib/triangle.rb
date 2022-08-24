class Triangle

  attr_accessor :side_a, :side_b, :side_c

  def initialize(length_1, length_2, length_3)
    @side_a = length_1
    @side_b = length_2
    @side_c = length_3
  end

  def kind
    ab = @side_a + @side_b
    bc = @side_b + @side_c
    ac = @side_a + @side_c

    if(ab > @side_c && bc > @side_a && ac > @side_b && @side_a > 0 && @side_b > 0 && @side_c > 0)
      if(@side_a == @side_b && @side_a == @side_c)
        :equilateral
      elsif(@side_a == @side_b || @side_a == @side_c || @side_b == @side_c)
        :isosceles
      else
        :scalene
      end

    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "Not a triangle"
    end
  end

end