num = 1

while num < 101

	result = "#{num}"

	if num % 3 == 0
		result << "Fizz"
	end

	if num % 5 == 0
		result << "Buzz"
	end

	if num.to_s.start_with?('1')
		result << "Bang"
	end

	puts result
	num += 1
end
