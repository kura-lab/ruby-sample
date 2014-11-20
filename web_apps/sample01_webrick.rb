#! ruby -Ku
# -*- encoding: utf-8 -*-

# WEBrick

require 'webrick'

config = {
  :Port => 8080,
  :DocumentRoot => './root',
}

server = WEBrick::HTTPServer.new(config)

# Ctrl-cで終了
trap(:INT) do
  server.shutdown
end

# 特定パスへの処理実行
server.mount_proc("/info") { |req, res|
  res.body << "<html><body>"
  req.each { |key, value|
    res.body << "#{key}: #{value}<br>"
  }
  res.body << "</html></body>"
}

server.start
