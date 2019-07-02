def calculate_interest_rate(i,p,t)
  interest = i
  money_borrowed = p
  time = t
  puts "Interest Rate = #{interest}/ #{money_borrowed} x #{time}"
end

def calculate_interest(r,p,t)
  interest_rate = r
  money_borrowed = p
  time = t
  puts "Interest = #{interest_rate} x #{money_borrowed} x #{time}"
end

def calculate_money_borrowed(i,r,t)
  interest = i
  interest_rate = r
  time = t
  puts "Money Borrowed = #{interest}/ #{interest_rate} x #{time}"
end

def calculate_time(i,p,r)
  interest = i
  money_borrowed = p
  interest_rate = r
  puts "Time = #{interest}/ #{money_borrowed} x #{interest_rate}"
end
