#! ruby -Ku
# -*- encoding: utf-8 -*-

# クラス継承

class SuperBocchi
  # 以下publicでまとめてアクセス制御
  public

  def drive
    puts "lonely drive..."
  end

  def karaoke
    puts "lonely sing..."
  end
end

# < でスーパークラスを継承
class SubBocchi < SuperBocchi
  public

  def walk
    puts "lonely walk..."
  end

  # メソッドのローバーライド
  def karaoke
    # スーパークラスのメソッド呼び出し
    super
    puts "very lonely sing..."
  end
end

bocchi = SubBocchi.new
bocchi.walk()
bocchi.drive()
bocchi.karaoke()
