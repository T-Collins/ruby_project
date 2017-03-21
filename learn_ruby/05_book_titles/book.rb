class Book
# write your code here
	@@conjunctions = ["and", "or", "so", "but", "because", "although"]
	@@prepositions = ["in","of"]
	@@articles = ["a","the","an"]

	def title=(title)

	title = title.split.each do |element|
		if (not @@conjunctions.include? element and not @@prepositions.include? element and not @@articles.include? element) 
			element.capitalize!
		end
	end
		title[0].capitalize!
		@title = title.join(" ")
	end

	def title
		@title
	end

end
