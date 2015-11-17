# list all the foctors of a number.

def factor?(number)
  factors = []
  (1..number).each do |i|
    if number % i == 0
      factors << i
    end
  end
  if factors.size == 2
  	return "prime number" 
  end
  factors
end

p factor?(1003) #=&gt; [1, 3]
p factor?(300) #=&gt; [1, 2, 4, 8]