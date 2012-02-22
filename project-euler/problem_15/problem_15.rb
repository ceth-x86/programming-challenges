class Problem_15
	def initialize(size)
		@grid_size = size
		@cache = {}
	end

	def calculate
		find_solution(0, 0)
	end

	def area(x, y)
		(@grid_size - x) * (@grid_size - y)
	end

	def find_solution(x, y)
		cur_area = area(x, y)
		if(cur_area == 0)
			return 1
		end				

		i = 0
		key = (@grid_size - x).to_s + "x" + (@grid_size - y).to_s			

		if(not @cache.has_key?(key))			
			if(x < @grid_size)
				i += find_solution(x + 1, y)
			end

			if(y < @grid_size)
				i += find_solution(x, y + 1)
			end
			
			@cache[key] = i
		end

		return @cache[key]
	end
end

solution = Problem_15.new(20)
puts solution.calculate