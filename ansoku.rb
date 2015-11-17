input_1 = gets.split(" ").map(&:to_i)
a = input_1[0]
b = input_1[1]
r = input_1[2]

n = gets.to_i
(1..n).each do
	input_2 = gets.split(" ").map(&:to_i)
	x = input_2[0]
	y = input_2[1]
	if ((x-a)^2+(y-b)^2>=r^2 )
		puts "silent"
	else
		puts "noisy"
	end
end

