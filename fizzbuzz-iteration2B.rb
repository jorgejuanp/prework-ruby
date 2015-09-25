num = 1
nums = Array.new

while num < 101
	nums.push num
	num += 1
end


nums.each do |element|
	if element % 15 == 0
		puts "FizzBuzz"
	elsif element % 3 == 0
		puts "Fizz"
	elsif element % 5 == 0
		puts "Buzz"
	else
		puts element
	end
end

