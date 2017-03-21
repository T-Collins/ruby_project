#write your code here
def add x,y
	x+y
end

def subtract x,y
	x-y
end

def sum elements
	elements.inject(0,:+)
end

def multiply elements
	elements.inject(1,:*)
end

def power x,y
	result = 1
	for i in 1..y
		result = result*x
	end
	result
end

def factorial x
	result = 1
	while (x > 1)
		result *= x
		x -= 1
	end	
	result	
end
