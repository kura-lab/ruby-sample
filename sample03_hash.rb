#! ruby -Ku
# -*- encoding: utf-8 -*-

# ハッシュ

# リテラル、シンボル(:)による初期化
hash1 = {
  :hoge => 'hogehoge',
  :foo  => 'foofoo',
  :bar  => 'barbar',
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
hash2[:hoge] = 'hogehoge'
hash2[:foo] = 'hogefoo'
puts hash2[:hoge]

# ハッシュ検索、削除
if hash2.include?(:hoge) then
  puts "#{:hoge}"
end
puts "#{hash2.member?(:hogefoo)}"
hash2.delete(:foo)
puts "#{hash2.include?(:foo)}"
