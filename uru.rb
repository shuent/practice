input_card = "H1 H13 H12 H11 H10"
arr_card = input_card.split(" ").sort

# arr_card の一文字目が同じ場合カウントする
# カウントが5の場合フラッシュ

# arr_card.each do |x| 
# 	n = 0
# 	if arr_card[x][0] == arr_card[x+1][0] #error
# 		n += 1
# 	end
# end
# return frash if n =5



# frash の判定。５つ同じスートであればfrashを返す。
def is_frash? arr_card
frash = arr_card.
		join.
		scan(/[SDHC]/).
		group_by{ |i| i }.
        values.
        map( &:size )
	if frash == [5]
		return true
	end
end


# arr_cardから数字のみ取り出す
# 	後方参照
# 同じ数字をカウント
# カウント数で場合分け
# ranks = arr_card.each do |card|
# 	card.scan(/\d+/) 
# end


# ストレートの判定



# ストレート、フラッシュ以外の判定



# ストレートの判定
# 前の数字+1 が次のカードの場合
# すべてのカードに当てはまる場合
# ストレート
# s = 0
# for i in ranks_2 do
# 	if ranks_2[i] == ranks_2[ i+1 ] +1
# 		s += 1
# 	end
# end

sorted_card = arr_card.
			  join.
			  scan(/\d+/).
			  map(&:to_i).
			  sort

def	is_straight? sorted_card
	if sorted_card[0] == 1 && sorted_card.last == 13
		return true
	end
	sorted_card.
	each_with_index do | e, i |
		unless i == 0
			unless e - 1 == sorted_card[i-1] 
				return false
			end
		end
	end
	return true
end


def test_straight
	rank_t = [1,2,3,4,5]
	rank_f = [2,3,5,1,8]
	if is_straight?( rank_t ) == true
		puts "Success"
	end

end





# それ以外の判定
def is_hand? sorted_card
	# ranks_2 = arr_card.join.scan(/\d+/)
	key = sorted_card.
	      group_by{ |i| i }.
	      values.
	      map( &:size ). # [4,1]
	      sort.
	      join.
	      to_i

	result = {14=>'4K', 23=>'FH', 113=>'3K', 122=>'2P', 1112=>'1P', 11111=>'--' }
	return result[key]
end

# うえの判定をすべて合わせて
# if is_straight? arr_card == true && is_frash? arr_card == true
# 	puts "straight frash!"
# elsif is_frash? arr_card == true
# 	puts "frash"
# elsif is_straight? arr_card == true
# 	puts "straight!"
# else
	# puts "true" if is_straight? ( sorted_card ) == true
	# if puts is_straight? arr_card == true
	# 	puts "Success"
	# end

	a = is_frash? arr_card 
	b = is_straight? sorted_card
	c = is_hand? sorted_card

	if a && b == true
		puts "straight frash!"
	elsif a == true
		puts "frash"
	elsif b == true
		puts "straight!"
	else 
		puts c
	end

