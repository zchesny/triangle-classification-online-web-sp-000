# refactored based on solution
class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_traingle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_traingle
    real_triangle = [(a + b > c), (b + c > a), (a + c > b)]
    [a, b, c].each{|side| real_triangle << false if side <= 0}
    raise TriangleError if real_triangle.include?(false)
  end

  class TriangleError < StandardError
  end
end

# my original example
# class Triangle
#   # write code here
#   attr_reader :l1, :l2, :l3
#
#   def initialize(l1, l2, l3)
#     traingle_inequality = [
#       l1 > 0,
#       l2 > 0,
#       l3 > 0,
#       l1 + l2 > l3,
#       l2 + l3 > l1,
#       l1 + l3 > l2
#     ]
#     if traingle_inequality.all?{|condition| condition}
#       @l1 = l1
#       @l2 = l2
#       @l3 = l3
#     else
#       raise TriangleError
#     end
#   end
#
#   def kind
#     if l1 == l2 && l2 == l3
#       return :equilateral
#     elsif l1 == l2 || l2 == l3 || l1 == l3
#       return :isosceles
#     else
#       return :scalene
#     end
#   end
#
#   class TriangleError < StandardError
#   end
# end
