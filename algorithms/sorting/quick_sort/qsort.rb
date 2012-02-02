# using Array.partition

def quick_sort(list)
	return [] if list.size == 0

	x, *xs = *list
	less, more = xs.partition { |y| y < x}
	quick_sort(less) + [x] + quick_sort(more)
end

# not using Array.partition

def quick_sort_2(keys, left, right)
	if left < right
		pivot = partition(keys, left, right)
		quick_sort_2(keys, left, pivot - 1)
		quick_sort_2(keys, pivot + 1, right)
	end
	keys
end

def partition(keys, left, right)	
	x = keys[right]
	i = left - 1
	for j in left..right - 1
		if keys[j] <= x
			i += 1
			keys[i], keys[j] = keys[j], keys[i]
		end
	end

	keys[i + 1], keys[right] = keys[right], keys[i + 1]
	i + 1
end


lst = [9,4,10,12,3,5,10,3,2,25,6,21,33,23,19,13,38,26,12,3]
p quick_sort(lst)
p quick_sort_2(lst, 0, lst.size - 1)
