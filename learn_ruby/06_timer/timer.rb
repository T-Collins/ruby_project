class Timer
  #write your code here
	def initialize 
		@seconds = 0
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	def seconds
		@seconds
	end

	def time_string
		hours = @seconds/3600
		mins = (@seconds%3600)/60
		secs = @seconds%60
		
		padded(hours) + ":" + padded(mins) + ":" + padded(secs)
	end

	def padded input
		if (input < 10)
			output = "0" + input.to_s
		else
			output = input.to_s
		end
		output
	end
		
		
end
