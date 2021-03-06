# Each new term in the Fibonacci sequence is generated by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
# 	find the sum of the even-valued terms.


### Iterative ####

def fibonacci_iterative(n)
  return 0 if n == 0
  base = 0
  current = 1
  #1.upto(n-1) do
  (n-1).times do
    num = current + base
    base = current
    current = num
  end
  current
end

p fibonacci_iterative(10)

#### Recur #####



def fib_r(a, b, n)
  if n == 0 
  	a
  else
  	fib_r(b, a + b, n - 1)
  end
end

def fib(n)
  fib_r(0, 1, n)
end

p fib(10)



######  #######

def fibo(num)
	if num == 0
		return 1
	elsif num == 1
		return 2
  else
  	fibo(num-1) + fibo(num-2)
  end
end

puts fibo(19)


def sum_even_fibs(big_num)
	even_array = []
	i = 0

	while fibo(i) < big_num
		even_array << fibo(i) if fibo(i).even? 
			i += 1
	end
	return even_array.inject(:+)
end

p sum_even_fibs(4_000_000)