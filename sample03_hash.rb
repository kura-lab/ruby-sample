#! ruby -Ku
# -*- encoding: utf-8 -*-

# ハッシュ

# リテラル、シンボル(:)による初期化
hash1 = {
  :kura     => 'bocchi',
  :kurara   => 'too bocchi',
  :kurakura => 'very bocchi',
}

hash1.each { |key, value|
  puts "#{key}: #{value}"
}

# keyを取り出す
hash1.each_key{ |key|
  puts "key: #{key}"
}

# newメソッドによる初期化
hash2 = Hash.new
hash2[:kura]   = 'bocchi'
hash2[:kurara] = 'too bocchi'
puts hash2[:kura]

# ハッシュ検索、削除
if hash2.include?(:kura) then
  puts "#{:hoge}"
end
puts "#{hash2.member?(:kurara)}"
hash2.delete(:kurara)
puts "#{hash2.include?(:kurara)}"
