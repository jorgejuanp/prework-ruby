num = 1

while num < 101

	if num.to_s.start_with?('1')
	 	str = "Bang"
	else
	 	str = ""
	end

	if num % 15 == 0
		puts "FizzBuzz#{str}"
	elsif num % 3 == 0
		puts "Fizz#{str}"
	elsif num % 5 == 0
		puts "Buzz#{str}"
	else
		puts "#{num}#{str}"
	end

	num += 1
end