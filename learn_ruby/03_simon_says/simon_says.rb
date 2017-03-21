#write your code here
def echo input
	input
end

def shout input
	input.upcase
end

def repeat input, num=2
	output = input
	for i in 2..(num)
		output = output + " " + input
	end
	output
end

def start_of_word word, sub_length
	word[0,sub_length]
end

def first_word input
	input.split[0]
end

def titleize input
	little_words = ["and","the","over"]
	output = input.split
	output.each do |element|
		if (not little_words.include? element)
			element.capitalize!
		end
	end
	output[0].capitalize!
	output.join(" ")
end
