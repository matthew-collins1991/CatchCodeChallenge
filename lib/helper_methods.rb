class String
  def print_slowly
    self.each_char do |c|
      sleep 0.04
      print c
    end
    puts ""
  end
end

def validate(input)
  begin
    value = Float(input)
  rescue
    puts "invalid input! please input a number to two decimal places".print_slowly
    return false
  end
  return value
end


def run_glyph_class(input)
  value = Glyphs.new
  value.print_glyph(input)
end
















#
