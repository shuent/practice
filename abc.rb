n,m = gets.split.map(&:to_i)
width = []
m.times do
  s = gets.split.map(&:to_i)
  width << s
end
p width
a_sum = []

width.each_with_index do |n, i|
    jum = 0
  n.each do |m|
  	jum += m
  end
  a_sum << jum
end
sum = 0
a_sum.each do |i|
  if i > 0
  	sum += i
  else
    next
  end
end
p sum
