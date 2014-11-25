#! ruby -Ku
# -*- encoding: utf-8 -*-

# 親ぼっちクラス
class SuperBocchi
  public

  def drive
    puts 'lonely drive...'
  end

  def karaoke
    puts 'lonely sing...'
  end
end

# 子ぼっちクラス
class SubBocchi < SuperBocchi
  public

  def walk
    puts 'lonely walk...'
  end

  # メソッドのローバーライド
  def karaoke
    # スーパークラスのメソッド呼び出し
    super
    puts 'very lonely sing...'
  end
end

bocchi = SubBocchi.new
bocchi.walk
bocchi.drive
bocchi.karaoke
