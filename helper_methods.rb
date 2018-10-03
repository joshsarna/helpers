# path: ~/Actualize/helpers/helper_methods

class Fellowship
  def self.deep_copy(item)
    Marshal.load(Marshal.dump(item))
  end

  def self.factorial(n)
    if n == 0
      return 1
    end
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

class Array
  # sort hashes by as many keys as desired; first keys listed are given highest priority
  def sort_hashes_by(*keys)
    key_index = keys.length - 1
    keys.length.times do
      key = keys[key_index]
      i = 0
      self.each do |hash|
        less = 1
        i.times do
          if hash[key] < self[i - less][key]
            self[i + 1 - less], self[i - less] = self[i - less], self[i + 1 - less]
          end
          less += 1
        end
        i += 1
      end
      key_index -= 1
    end
    return self
  end
end