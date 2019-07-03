class String
  def print_slowly
    self.each_char do |c|
      sleep 0.04
      print c
    end
    puts ""
  end
end

def invalid_input
  puts "invalid input! please input a number to two decimal places".print_slowly
  return false
end

def validate_float(input)
  begin
    value = Float(input)
  rescue
    return invalid_input
  end
  return validate_2dp(value)
end

def validate_2dp(value)
  # turn into string, split by decimal, check length of right hand side.
  string_value = value.to_s
    if string_value.include? '.'
      if string_value.split('.')[1].length > 2
        return invalid_input
      else
        return value
      end
  else
    return value
  end
end


def run_glyph_class(input)
  value = Glyphs.new
  value.print_glyph(input)
  puts "Thank you for using the Funky Finance calculator!".print_slowly
end
















#
