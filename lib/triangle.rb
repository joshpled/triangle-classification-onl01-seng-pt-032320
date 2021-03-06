class Triangle

attr_accessor :side_a, :side_b, :side_c,:equilateral,:isosceles, :scalene
  # write code here
  def initialize(side_a,side_b,side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end



  def kind
    sides = [@side_a,@side_b,@side_c].sort
    raise TriangleError if sides.any? {|s| s <= 0} || (sides[0]+ sides[1]) <= sides[2]
      case sides.uniq.size
      when 1
        :equilateral
      when 2
        :isosceles
      else
        :scalene
      end
    end


  class TriangleError < StandardError
  end
end
