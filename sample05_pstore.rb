#! ruby -Ku
# -*- encoding: utf-8 -*-

# PStore

require 'pstore'
database = "bocchi.pstore"

db = PStore.new(database)
db.transaction do
  # PStoreに保存
  db["kura"] = "bocchi"
  db["feeling"] = "sad"
end # transactionをぬけるときに保存完了

db.transaction do
  # 読み込み
  puts "kura is #{db["kura"]}"
end

# 引数にtrueで読み込み専用
db.transaction(true) do
  # 書き込みはエラー
  # db["kura"] = "not bocchi"
  
  # rootsで全キー取得
  db.roots.each { |key|
    puts "key: #{key}"
  }

end

db.transaction do
  # 削除
  if db.root?("kura")
    db.delete("kura")
    puts "kura is deleted"
  end
end

File.delete(database)
