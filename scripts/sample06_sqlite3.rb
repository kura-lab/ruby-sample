#! ruby -Ku
# -*- encoding: utf-8 -*-

# SQLite3

#
# デフォルトのインストール先を確認
# $ gem help install
# ...
# --install-dir
#
# SQLite3インストール
# ビルドに必要なdevelインストール
# $ sudo yum install sqlite-devel
# $ gem install sqlite3-ruby
# $ gem install dbi
# $ gem install dbd-sqlite3
#
# インストール済みのライブラリ確認
# $ gem list
# 
# *** LOCAL GEMS ***
# 
# dbd-sqlite3 (1.2.5)
# dbi (0.4.5)
# sqlite3 (1.3.10)
# sqlite3-ruby (1.3.3)
#

require 'rubygems' # gemsでインストール時には必要
require 'dbi'

dbh = DBI.connect('DBI:SQLite3:bocchi.db')

# 既存テーブルの削除
dbh.do("drop table if exists members")
puts "table 'members' was dropped."

# 新規テーブルの作成
dbh.do("create table members (
        id   int          not null,
        name varchar(100) not null,
        age  int          not null,
        jod  varchar(100) not null,
        primary key(id));")
puts "table 'members' was created."

# データの挿入
dbh.do("insert into members values (
        1,
        'kura',
        18,
        'web engineer');")
dbh.do("insert into members values (
        2,
        'kurara',
        18,
        'web designer');")
puts "2 members inserted."

# データの読み込み
sth = dbh.execute("select * from members")
sth.each do |row|
  row.each_with_name do |val, name|
    puts "#{name}: #{val.to_s}"
  end
end
sth.finish

dbh.execute("delete from members")
puts "members table deleted."

# 接続終了
dbh.disconnect
