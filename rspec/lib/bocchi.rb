class Bocchi
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def isBocchi?
    true
  end

  def isFun?
    false
  end
end
