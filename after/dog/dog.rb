class Dog
  attr_accessor :size, :bark, :guarding, :trained

  def initialize(options)
    self.size     = options[:size]
    self.bark     = options[:bark]
    self.guarding = options[:guarding]
    self.trained  = options[:trained]
  end

  # FLOG
  # --------------------------
  # 20.3: flog total
  #  5.1: flog/method average
  #
  #  7.0: Dog#bark_by_size
  #  6.8: Dog#initialize


  def speak
    return "#{@bark} #{@bark} #{@bark} #{@bark} #{@bark}" if guarding
    return "" if trained

    bark_by_size
  end

private
  def bark_by_size
    volume = {"Small" => 1, "Medium" => 2, "Large" => 3}
    ([@bark] * volume[size]).join(" ")
  end
end