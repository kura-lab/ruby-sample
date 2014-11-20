#! ruby -Ku
# -*- encoding: utf-8 -*-

# Fileクラス

# 書き込み
file = File::open("bocchi.txt", "w+")
file.puts "kura"
file.puts "bocchi"
file.close

# 読み込み
file = open("bocchi.txt")
file.each{ |line|
  puts line
}
file.close

# 全内容読み込み
file = open("bocchi.txt")
print file.read
file.close

# ブロック
open("bocchi.txt"){ |file|
  file.each{ |line|
    puts line
  }
} # ブロックはcloseが不要
File.delete("bocchi.txt")
