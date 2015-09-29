#########################################
# author: jorge juan perales			#
# date: september 2015					#
# summary: Caesar cipher, iteration 3	#
#########################################



# encode text
def encode(source, shift)
	letters_array = source.split('')	#create an array with the letters
	encoded_letters = []			#create an array with encoded letters

	letters_array.each do |letter|
		if letter.ord == 32
			encoded_letters << letter
		elsif letter.ord + shift < 97
			letter = letter.ord + 26 + shift
			encoded_letters << letter
		elsif letter.ord + shift > 122
			letter = letter.ord - 26 + shift
			encoded_letters << letter
		else
			encoded_letters << (letter.ord + shift)
		end
	end

	encoded_letters.each {|i| print i.chr}	#print encoded letters as characters
end



# decipher text
def decipher(source, shift)
	letters_array = source.split('')	#create an array with the letters
	encoded_letters = []			#create an array with encoded letters

	letters_array.each do |letter|
		if letter.ord == 32
			encoded_letters << letter
		elsif letter.ord - shift < 97
			letter = letter.ord + 26 + shift
			encoded_letters << letter
		elsif letter.ord + shift > 122
			letter = letter.ord - 26 + shift
			encoded_letters << letter
		else
			encoded_letters << (letter.ord + shift)
		end
	end

	encoded_letters.each {|i| print i.chr}	#print encoded letters as characters
end



#ask for the action to perform
puts "Do you want to encode or decipher?"
action = gets.chomp

if action == "encode"
	puts "Please write a text to encode:"
	src = gets.chomp
	puts "What is your desired shift number?"
	shift = gets.chomp.to_i
	encode(src, shift)
elsif action == "decipher"
	puts "Please write a text to decipher:"
	src = gets.chomp
	decipher(src, -3)
else
	puts "You have to write \"encode\" or \"decipher\""
end







