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
  # 25.7: flog total
  #  8.6: flog/method average
  #
  # 17.8: Dog#speak
  def speak
    if @size == "Small"
      if guarding
        "#{@bark} #{@bark} #{@bark} #{@bark} #{@bark}"
      elsif trained
        ""
      else
        @bark
      end
    elsif @size == "Medium"
      if guarding
        "#{@bark} #{@bark} #{@bark} #{@bark} #{@bark}"
      elsif trained
        ""
      else
        "#{@bark} #{@bark}"
      end
    elsif @size == "Large"
      if guarding
        "#{@bark} #{@bark} #{@bark} #{@bark} #{@bark}"
      elsif trained
        ""
      else
        "#{@bark} #{@bark} #{@bark}"
      end
    end
  end

end