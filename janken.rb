u_hand = gets.chomp

def janken(u_hand)
  n = rand(3)
  case n
  when 0
    hand2 = "グー"
  when 1
  	hand2 = "チョキ"
  when 2
  	hand2 = "パー"
  end
p  "your hand is " + u_hand
p hand2
  if u_hand == hand2
    "あいこ"
  elsif (u_hand == "グー" && hand2 == "チョキ") ||
  		(u_hand == "チョキ" && hand2 == "パー") ||
  		(u_hand == "パー" && hand2 == "グー")
    "あなたのかち"
  elsif u_hand != "グー" &&
  		u_hand != "チョキ" &&
  		u_hand != "パー"
  	"Invaild input"
  else
    "あなたの負け"
  end
end
puts janken(u_hand)
# puts janken("グー")
# puts janken("グー")
# puts janken("チョキ")
# puts janken("パー")
# puts janken("チョキ")
# puts janken("xxx")
# puts janken("hhh")
# puts janken("チ")
