class Triangle

attr_accessor :side_a, :side_b, :side_c,:equilateral,:isosceles, :scalene
  
	def initialize(*args)
    @sides = *args.sort
  end

  def kind
    
		raise TriangleError if @sides.any? {|s| s <= 0} || @sides[0]+ @sides[1] <= @sides[2]
    
		case @sides.uniq.size
    when 1
      :equilateral
    when 2
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
     
		 def message
        "This is not a triangle!"
      end

end
end 