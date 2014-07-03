# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.



def three_five(array)
	total = 0
	array.each do |i|
	  if (i % 3 == 0 || i % 5 == 0)
	  	total += i
		end
	end

	return total
end

three_five((1...1000).to_a)


##### Class 

class ThreeFive

	def is_multiple_of_three(i)
		i % 3 == 0 
	end

	def is_multiple_of_five(i)
		i % 5 == 0 
	end

	def find_three_five(n)
		@sum_these = []

		(1...n).each do |i|
			if is_multiple_of_five(i)
				@sum_these << i
		  elsif is_multiple_of_three(i)
				@sum_these << i
			else
				"what?"
			end
		end
		 @sum_these
	end

	def sum_three_five(n)
		find_three_five(n)
		@sum_these.inject(:+)
	end

end

newEx = ThreeFive.new
p newEx.sum_three_five(1000)

