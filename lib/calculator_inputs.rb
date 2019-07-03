def ask_for_interest_rate
  puts "What is the interest rate?".print_slowly
  interest_rate_value = gets.strip.to_f
  return interest_rate_value
end


def ask_for_interest
  puts "How much interest will be paid?".print_slowly
  interest_value = gets.strip.to_f
  return interest_value
end

def ask_for_money_borrowed
  puts "How much money will be borrowed?".print_slowly
  money_borrowed = gets.strip.to_f
  return money_borrowed
end


def ask_for_time_period
  puts "How much time will be needed (years)?".print_slowly
  time_period = gets.strip.to_f
  return time_period
end
