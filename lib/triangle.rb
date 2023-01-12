class Triangle
attr_reader :a, :b, :c

  def initialize (a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end 

  def kind 
    validate_triangle
    if a == b && b == c  
      :equilateral
    elsif a == b  || b == c || a == c 
      :isosceles 
    else 
      :scalene
    end
  end 

  def is_valid_triangle?  
    [a,b,c].all? {|n| n > 0} && (a + b > c && b + c > a && a + c > b)
  end 

  def validate_triangle
    raise TriangleError unless is_valid_triangle? 
  end 

  class TriangleError < StandardError
  end 
end
