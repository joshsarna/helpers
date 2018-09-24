class Fellowship
  def self.deep_copy(item)
    Marshal.load(Marshal.dump(item))
  end

  def self.factorial(n)
    (1..n).inject(:*)
  end

  def self.prime?(n)
    if n.class != Integer
      raise ArgumentError.new("The argument should be an integer")
    end
    if n < 2 || n % 1 != 0
      return false
    elsif n == 2
      return true
    end
    i = 2
    Math.sqrt(n).floor.times do
      if n % i == 0
        return false
      end
      i += 1
    end
    return true
  end

  def self.int_digit(integer,digit)
    if digit >= integer.to_s.length
      return nil
    end
    integer.to_s[digit].to_i
  end
end

class Integer
  def digit(n)
    if n > self.to_s.length
      return nil
    else
      return self.to_s[n].to_i
    end
  end
end