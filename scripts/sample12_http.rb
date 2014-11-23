#! ruby -Ku
# -*- encoding: utf-8 -*-

# HTTP通信

require "net/http"

#簡易なHTTP通信（GET）
#result = Net::HTTP.get("example.com", "/")
#puts result

http = Net::HTTP.new("example.com")

# GETメソッド
response = http.get("/")
puts "staus code: " + response.code
response.each { |key, value|
  puts "#{key}: #{value}"
}
puts response.body

# POSTメソッド
response = http.post("/", "param1=value1&param2=value2")
puts response.code
