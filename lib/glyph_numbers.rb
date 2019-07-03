class Glyphs

@@glyph = [
  ["===", "@@@", "@ @", "@ @", "@ @", "@@@", "==="],
  ["=", "@", "@", "@", "@", "@", "="],
  ["===", "@@@", "  @", "@@@", "@  ", "@@@", "==="],
  ["===", "@@@", "  @", "@@@", "  @", "@@@", "==="],
  ["===", "@ @", "@ @", "@@@", "  @", "  @", "==="],
  ["===", "@@@", "@  ", "@@@", "  @", "@@@", "==="],
  ["===", "@@@", "@  ", "@@@", "@ @", "@@@", "==="],
  ["===", "@@@", "  @", "  @", "  @", "  @", "==="],
  ["===", "@@@", "@ @", "@@@", "@ @", "@@@", "==="],
  ["===", "@@@", "@ @", "@@@", "  @", "  @", "==="]
]

@@glyph_dot = ["=", " ", " ", " ", " ", "@", "="]
@@glyph_space = ["=", " ", " ", " ", " ", " ", "="]


  def print_glyph(number)
    # turn rounded number into array of individual parts in string format, with trailing zeros removed
    number_array = number.round(2).to_s.sub(/\.?0+$/, '').split("")
    i = 0
    # each glyph is 7 lines high - loop each number 7 times
    loop do
      # map over each number in the array, and print the line from glyp array
      number_array.map { |n|
      if n == '.'
          print @@glyph_dot[i]
          print @@glyph_space[i]
      else
          print @@glyph[n.to_i][i]
          print @@glyph_space[i]
      end
      }
      sleep 0.04
      puts ""
      i += 1
        if i > 7
          break
        end
    end
  end

# class end
end
