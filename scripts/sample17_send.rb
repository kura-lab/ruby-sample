#! ruby -Ku
# -*- encoding: utf-8 -*-

# sendメソッド

class Bocchi
  private

  def hikikomoru(day)
    puts "hikikomori in #{day} days."
  end
end

bocchi = Bocchi.new
bocchi.__send__(:hikikomoru, 3)

puts 1.__send__("+",2)
