#! ruby -Ku
# -*- encoding: utf-8 -*-
# ↑マジックコメント

# 文字列リテラル
puts "Hello Bocchi"
puts "こんにちはぼっち"

# newメソッド
puts String.new("ぼっち")
puts String.new "ぼっち"

str1 = "string"
puts str1

# 組み込みメソッド
print "printメソッド\n"
print "print" "メソッド\n"

# 文字列連結
str2 = "!!"
puts str1 + str2

# 文字列追加
puts "kura is ".concat("bocchi")
puts "kura is " << "bocchi"

# 数値リテラル
puts 2e2 # 2の10の2乗

# printfメソッド
printf("20 + 2 = %04d\n", 20 + 2)

# 式展開
puts "文字列:#{str1}"

# Dateクラス
require 'date'
day = Date.today
puts day.to_s
new_years_day = Date.new(2015,1,1)
puts new_years_day.to_s

# Arrayクラス
array = ["kura", "kurara", ["kurakura",10]]
puts array[0]
puts array[2][1]
puts "kurara: " + array.index("kurara").to_s

# eachメソッド
list = ["kura", "kurara", "kurakura"]
list.each { |fp|
  puts "name: " + fp
}
