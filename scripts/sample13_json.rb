#! ruby -Ku
# -*- encoding: utf-8 -*-

# JSON

require "json"

# 作成
data = {
  "kura"   => "bocchi",
  "kurara" => "very bocchi"
}
puts JSON.generate(data)

# ハッシュへ変換
json = '{"kura":"bocchi","kurara":"very bocchi"}'
puts JSON.parse(json)
