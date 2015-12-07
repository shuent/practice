file = File.open("done_log.txt", "a+")
# 1行ずつcmdlineから入力したものを記録。
# delete を実装したい
# falseが効かない
# break にするとファイルが読めない

while true
	# lines = file.readlines
	input_s = gets.chomp
	input = input_s + " | " + Time.new.to_s
	break if input_s == "exit"
	file.puts(input)
  end
  puts(file.readlines.reverse)
file.close
