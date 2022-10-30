require "pry"

class Triangle
      # attr_accessor :side1, :side2, :side3

      def initialize(side1, side2, side3)
        @side1=side1
        @side2=side2
        @side3=side3
      end
    
    def kind
      if  all_sides_are_greater_than_0? && two_sides_greater_than_one?
        type_of_triangle
      else
        raise TriangleError
      end
    end


      class TriangleError < StandardError
        
    # write code here
  end


  private
    def type_of_triangle
      if(@side1 == @side2 && @side1 == @side3 && @side2==@side3)
        :equilateral
      elsif (@side1 == @side2 || @side1 == @side3 || @side2==@side3)
        :isosceles
      else
        :scalene
      end
    end


    def all_sides_are_greater_than_0?
      return true unless !![@side1, @side2, @side3].find {|side| side <= 0}
      false
    end

    def two_sides_greater_than_one?
      (@side1 < @side2 + @side3) && (@side2 < @side1 + @side3) && (@side3 < @side1 + @side2)   
    end
end


# binding.pry