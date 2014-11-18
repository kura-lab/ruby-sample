#! ruby -Ku
# -*- encoding: utf-8 -*-

# クラス
class Sample

  # @@はクラス変数
  @@foo = 'var'

  # 初期化メソッド
  def initialize(hoge, bar)
    # @はインスタンス変数
    @hoge = hoge
    @bar  = bar
  end

  # getter
  def hoge
    @hoge
  end

  # setter
  def hoge=(value)
    @hoge = value
  end

  # アクセッサメソッド
  # attr_writer, attr_reader
  attr_accessor :bar

  def display(value = 'Hello world')
    puts "disp: #{value}"
  end

  # to_sメソッド
  def to_s
    "#{@hoge}, #{@bar}, #{@@foo}"
  end
end

obj = Sample.new('tege', 'fuga')

# setter
puts obj.hoge
# getter
obj.hoge = 'hogehoge'

# アクセッサ
puts obj.bar
obj.bar = 'fugafuga'

obj.display()

puts obj.to_s
