class String
  def print_slowly
    self.each_char do |c|
      sleep 0.04
      print c
    end
    puts ""
  end
end

def valdidate_input(input)
  if input.is_a? Numeric
    return true
  else
    puts "invalid input! please input a number to two decimal places".print_slowly
    return false
  end
end

















#
