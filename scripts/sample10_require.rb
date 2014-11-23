#! ruby -Ku
# -*- encoding: utf-8 -*-

# require

require "./bocchi"

bocchi = Bocchi.new
bocchi.sing()

# ./bocchi.rb内のモジュールをinclude
include Karaoke
puts sing()
