#! ruby -Ku
# -*- encoding: utf-8 -*-

# Fileクラス

# 書き込み
file = File::open("data.txt", "w+")
file.puts "hoge"
file.puts "foo"
file.close

# 読み込み
file = open("data.txt")
file.each{ |line|
  puts line
}
file.close

# 全内容読み込み
file = open("data.txt")
print file.read
file.close

# ブロック
open("data.txt"){ |file|
  file.each{ |line|
    puts line
  }
} # ブロックはcloseが不要
File.delete("data.txt")
