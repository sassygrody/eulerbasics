def prime_check(number)
  (2...number).each { |x| return false if number % x == 0 }
  	true
end


def largest_prime(num)
	factors = []
  (1..num).each do |x|
  	if num % x == 0 && prime_check(x)
  		factors << x
  	end
  end
  p factors.last
end
p prime_check(17) == true
p prime_check(18) == false

largest_prime(600851475143)