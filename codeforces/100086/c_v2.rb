# return next permutation
# http://en.wikipedia.org/wiki/Permutation
#
# 1. Find the largest index k such that a[k] < a[k + 1]. If no such index exists, the permutation is the last permutation.
# 2. Find the largest index l such that a[k] < a[l]. Since k + 1 is such an index, l is well defined and satisfies k < l.
# 3. Swap a[k] with a[l].
# 4. Reverse the sequence from a[k + 1] up to and including the final element a[n].

class PemutationSeq
	def initialize(start)
		@last = start			# start permutation
		@n = start.length
	end

	def next
		k = calc_k
		if k == -1
			@last = first
		else
			l = calc_l k
			swap(k, l)
			@last = @last[0..k] + @last[(k+1)..(@n-1)].reverse	
		end

		return @last
	end

	private
	
	def calc_k		
		pos = @n 
		while (pos > 0)
			if @last[pos - 2] < @last[pos - 1]
				return pos - 2
			end
			pos -= 1
		end
		return -1
	end

	def calc_l(k)		
		pos = @n - 1		
		while (pos > k)			
			return pos if @last[k] < @last[pos]
			pos -= 1
		end		
	end

	def first
		return Array.new(@n) { |i| i + 1 }		
	end	

	def swap(n, k)
		@last[n], @last[k] = @last[k], @last[n]
	end
end

ps = PemutationSeq.new [2, 3, 1]
p ps.next


 