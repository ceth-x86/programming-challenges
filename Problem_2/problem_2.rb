class Some
  @a = 1
  @b = 2

  class << self
    include Enumerable

    def each
      1.upto(Float::INFINITY) do |i|
        @a, @b = @b, @a + @b
        yield @b
      end
    end
  end
end

puts Some.take_while { |i| i < 4000000 }
         .select { |n| n%2 ==0 }
         .inject(0) { |sum, item| sum + item } + 2
