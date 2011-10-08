def sieve(n)
  candidates = Array.new(n, true)
  candidates[0] = false

  candidates.each_with_index do | candidate, i |
    if candidate then
      yield (i + 1)
      (2 * i + 1).step(n, i + 1) do | index |
        candidates[index] = false
      end
    end
  end
end


sieve(20) { |num| puts num }
