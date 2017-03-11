
def substrings(input, dictionary)

	input.downcase!
	counter = {}
	
	dictionary.each do |word|
		counts = input.scan(word).length
		counter[word] = counts unless counts < 1
	end
	counter
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
