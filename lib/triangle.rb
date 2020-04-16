class Triangle
  # write code here
  attr_reader :l1, :l2, :l3

  def initialize(l1, l2, l3)
    traingle_inequality = [
      l1 > 0,
      l2 > 0,
      l3 > 0,
      l1 + l2 > l3,
      l2 + l3 > l1,
      l1 + l3 > l2
    ]
    if traingle_inequality.all?{|condition| condition}
      @l1 = l1
      @l2 = l2
      @l3 = l3
    else
      raise TriangleError
    end
  end

  def kind
    if l1 == l2 && l2 == l3
      return :equilateral
    elsif l1 == l2 || l2 == l3 || l1 == l3
      return :isosceles
    else
      return :scalene
    end
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
