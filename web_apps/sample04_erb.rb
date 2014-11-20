#! ruby -Ku
# -*- encoding: utf-8 -*-

# WEBrick and ERB

require 'webrick'

config = {
  :Port => 8080,
  :DocumentRoot => './root',
}

# .erbの場合にERBで出力
WEBrick::HTTPServlet::FileHandler.add_handler("erb", WEBrick::HTTPServlet::ERBHandler)

server = WEBrick::HTTPServer.new(config)

# erbのMIMEタイプ設定
server.config[:MimeTypes]["erb"] = "text/html"

trap(:INT) do
  server.shutdown
end

server.start
