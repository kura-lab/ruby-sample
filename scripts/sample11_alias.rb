#! ruby -Ku
# -*- encoding: utf-8 -*-

# alias

class Bocchi
  def play
    puts "sing anison"
  end
  # インスタンスメソッドのalias
  alias_method :sing, :play
end

bocchi = Bocchi.new
bocchi.play()
bocchi.sing()

def play
  puts "sing sing sing"
end

# メソッドのalias
alias :karaoke :play
karaoke()
