#! ruby -Ku
# -*- encoding: utf-8 -*-

# モジュール
# 埋め込み用関数
# クラス内でincludeして利用する

module Karaoke
  def sing
    puts "sing anison!!"
  end

  def shout
    return "Hi Hi Hi!!"
  end

  # モジュール関数として定義
  module_function :shout
end

class Bocchi
  include Karaoke

  def play
    sing()
  end
end

bocchi = Bocchi.new
bocchi.play()

puts Karaoke.shout()
# includeして利用可能
include Karaoke
puts shout()
