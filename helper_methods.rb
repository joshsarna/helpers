def deep_copy(item)
  Marshal.load(Marshal.dump(item))
end

def factorial(n)
  (1..n).inject(:*)
end
