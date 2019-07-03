def calculate_interest_rate(i,p,t)
  interest_rate = i/(p * t)
  puts "Interest Rate = interest / money borrowed x time".print_slowly
  run_glyph_class(interest_rate)
end

def calculate_interest(r,p,t)
  interest = r * p * t
  puts "Interest = interest rate x money borrowed x time".print_slowly
  run_glyph_class(interest)
end

def calculate_money_borrowed(i,r,t)
  money_borrowed = i / (r * t)
  puts "Money Borrowed = interest / interest rate x time".print_slowly
  run_glyph_class(money_borrowed)
end

def calculate_time(i,p,r)
  time = i / (p * r)
  puts "Time = interest / money borrowed x interest rate".print_slowly
  run_glyph_class(time)
end
