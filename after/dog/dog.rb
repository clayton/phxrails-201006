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
  # 16.8: flog total
  #  5.6: flog/method average
  #
  #  8.9: Dog#speak
  #  6.8: Dog#initialize

  def speak
    return "#{@bark} #{@bark} #{@bark} #{@bark} #{@bark}" if guarding
    return "" if trained
    if @size == "Small"
      @bark
    elsif @size == "Medium"
      "#{@bark} #{@bark}"
    elsif @size == "Large"
      "#{@bark} #{@bark} #{@bark}"
    end
  end

end