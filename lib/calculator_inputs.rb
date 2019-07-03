def ask_for_interest_rate
  puts "What is the interest rate (as a %)?".print_slowly
  interest_rate_value = gets.strip
  if validate_float(interest_rate_value) == false
    ask_for_interest_rate
  else
    return validate_float(interest_rate_value)/100
  end
end


def ask_for_interest
  puts "How much interest will be paid?".print_slowly
  interest_value = gets.strip
  if validate_float(interest_value) == false
    ask_for_interest
  else
    return validate_float(interest_value)
  end
end

def ask_for_money_borrowed
  puts "How much money will be borrowed?".print_slowly
  money_borrowed = gets.strip
  if validate_float(money_borrowed) == false
    ask_for_money_borrowed
  else
    return validate_float(money_borrowed)
  end
end


def ask_for_time_period
  puts "How much time will be needed (years)?".print_slowly
  time_period = gets.strip
  if validate_float(time_period) == false
    ask_for_time_period
  else
    return validate_float(time_period)
  end
end
