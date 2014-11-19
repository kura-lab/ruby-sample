#! ruby -Ku
# -*- encoding: utf-8 -*-

# クラス
class Bocchi

  # @@はクラス変数
  @@relationship = 'bocchi'

  # 初期化メソッド
  def initialize(name, status)
    # @はインスタンス変数
    @name   = name
    @status = status
  end

  # getter
  def name
    @name
  end

  # setter
  def name=(value)
    @name = value
  end

  # アクセッサメソッド
  # attr_writer, attr_reader
  attr_accessor :status

  def display(value = 'Hello Bocchi')
    puts "disp: #{value}"
  end

  # to_sメソッド
  def to_s
    "#{@name} is #{@status}, so #{@@relationship}"
  end
end

obj = Bocchi.new('kura', 'bocchi')

# getter
puts obj.name
# setter
obj.name = 'kurara'

# アクセッサ
puts obj.status
obj.status = 'not bocchi'

obj.display()

puts obj.to_s
