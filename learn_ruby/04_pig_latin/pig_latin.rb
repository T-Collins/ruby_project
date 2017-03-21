#write your code here
def translate word,punctuation=""
	vowels = ["a","e","i","o","u"]
	punctuations = ["!","?",",",".",":","'",";"]
	
	words = word.split
#if there are more than one words, recursively call translate on each word, and join them back up afterwards
	if (words.length > 1)
		words.map! do |element|
			element = translate(element)
		end
		word = words.join(" ")
#if there is only one word (or for each element when recursively called):
	else
#check for punctuation at the end of the word, if there is some remove it and store it separately
		if (punctuations.include? word[-1]) 
			punctuation = word[-1]
			word = word[0..-2]
		end
#for words that start with vowels, simply add "ay" and punctuation to the end, capitalization remains in the correct place if present
		if (vowels.include? word[0].downcase)
			word = word + "ay" + punctuation
#otherwise
		else
#check if there is any capitalization
			if (word[0] == word[0].upcase)
				capital = true
			end
#check if the phoneme "qu" is present, if so the u must follow with the q
			if (word[0].downcase == "q" and word[1].downcase == "u")
				trim = word[0..1]
				word = word[2..-1] + trim
			else
#otherwise simply move the consonant to the end of the word
				trim = word[0]
				word = word[1..-1] + trim
			end
#capitalize if necessary
			if (capital)
				word.capitalize!
			end
#recursively call translate, as any number of consonants at the start must move to the end, so translate keeps being called until a vowel is found
			word = translate(word,punctuation)
		end
	end
#return the translated word	
	word
end
		
