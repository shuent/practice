# 与えられた数字
  # str = gets.chomp
  # print str

# 素数をだす。
#   1とprime のみを約数にもつ

while num = STDIN.gets.chomp.to_i
def prime?(num)
  (2..num-1).each do |n|
    if num % n == 0 
      return false
  	end
  end
  return true
end
# puts prime?(num)

prim_arr = Array.new 
(2..num).each do |n|
	if prime?(n)
		prim_arr.push(n)
	end
end
# p prim_arr
puts prim_arr.length
end
