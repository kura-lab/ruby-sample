#! ruby -Ku
# -*- encoding: utf-8 -*-

# クリーンルーム

class Bocchi
  @instrument
  def play
    puts "play #{@instrument}"
  end
end

bocchi = Bocchi.new
# インスタンス内部の変数、メソッドを操作できる
bocchi.instance_eval do
  @instrument = "guiter"
  play()
end
bocchi.play()
