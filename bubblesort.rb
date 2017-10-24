def bubble_sort(array)

i = array.length
	loop do
		swapped = false

		(i-1).times do |x|
			
			if array[x] > array[x+1]
				array[x],array[x+1] = array[x+1],array[x]
				swapped = true
			end
		end
	
	break if not swapped

end

puts array

end

def bubble_sort_by(array)

i = array.length

loop do
	swapped = false
	(i-1).times do |x|
		if yield(array[x],array[x+1]) > 0
			array[x],array[x+1] = array[x+1], array[x]
			swapped = true
		end
	end
break if not swapped
end
puts array
end

bubble_sort([44,3,21,17,66,49,76,0])

    bubble_sort_by(["hi","hello","hey","add","more","values"]) do |left,right|
    	left.length - right.length
    end