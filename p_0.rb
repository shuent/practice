# 以下のプログラムに、指定された範囲の箇所に修正を加え、
# 一桁の数値のみ入力し、20 以上の数値が出現したら、それ以降の配列要素
# は表示しないようにして下さい。
number_list = [2, 13, 9, 3, 1, 35, 6, 11]
number_list.each do | number |
  # 変更許可範囲-ここから
  #こちらにコードを書いてください
  # puts number if number < 10
  # if number >= 20
  # 	break
  # end
  break if number >= 20
  next if number >= 10
  puts(number)
  # 変更許可範囲-ここまで
end