
src = IO.read("sentence.txt")

def stnc_to_array(sentence)
	words_array = sentence.split(" ") #split the sentence into words
	words_array.sort #sort the words
	
	#remove punctuation characters
	for item in words_array
		item.gsub(/[^A-Za-z0-9\s]/i, '')
	end
	
	# sort using a custom function that ignores cases when comparing words 
	# (you can compare both strings after calling upcase on them), but keeping 
	# the capitalized words as they were in the beginning .
	words_array.sort {|a, b| a.upcase <=> b.upcase}
end

puts stnc_to_array(src)