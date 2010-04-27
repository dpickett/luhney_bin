class LuhneyBin
  #inspired by concise python code on http://en.wikipedia.org/wiki/Luhn
  def self.validate(str)
    total = 0
    double_next = false
    str.reverse.each_char do |d|
      if double_next
        total += 2 * d.to_i % 9
      else
        total += d.to_i
      end
      double_next = !double_next
    end
    
    total % 10 == 0
  end
end