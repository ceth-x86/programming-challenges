class DynamicProgrammingSolution < Hash
	class ElementOfSolution
		attr_reader :key, :area

		def initialize(x, y, size)
			@x, @y, @size = x, y, size
			@key = (@size - @x).to_s + "x" + (@size - @y).to_s
			@area = (@size - @x) * (@size - @y)
		end

		def can_move_right
			@x < @size
		end

		def can_move_down
			@y < @size
		end

		def move_right
			ElementOfSolution.new(@x + 1, @y, @size)
		end

		def move_down
			ElementOfSolution.new(@x, @y + 1, @size)
		end
	end

	def initialize(size)
		@grid_size = size		
	end

	def calculate		
		find_solution(ElementOfSolution.new(0, 0, @grid_size))		
	end

	def find_solution(element)		
		if(element.area == 0)
			return 1
		end				

		i = 0

		if(not self.has_key?(element.key))			
			if(element.can_move_right)
				i += find_solution(element.move_right)
			end

			if(element.can_move_down)
				i += find_solution(element.move_down)
			end
			
			self[element.key] = i
		end

		return self[element.key]
	end
end


class MathSolution 
	def initialize(size)
		@size = size
	end	

	def factorial(n)
		n <= 1 ? 1 : n * factorial(n - 1)	
	end

	def calculate
		factorial(@size + @size) / (factorial(@size) * (factorial(@size)))
	end
end

dynamic_solution = DynamicProgrammingSolution.new(20)
puts dynamic_solution.calculate

math_solution = MathSolution.new(20)
puts math_solution.calculate

