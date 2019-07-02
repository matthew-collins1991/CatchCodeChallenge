
def welcome
  puts 'Welcome to Funky Finance!'.print_slowly
  run = Program.new
  run.opening_question
end


class Program

  attr_accessor :interest, :interest_rate, :time_period, :money_borrowed

    @@choices = [
      "I", "P", "r", "t"
    ]

  def opening_question
    # only run opening question when there is more than 1 choice available
    if @@choices.length > 1
      prompt = TTY::Prompt.new
      # print question depending on if it is first time the program is run
        if @@choices.length == 4
          response = prompt.select('What sort of number is the first variable?'.print_slowly, @@choices)
        else
          response = prompt.select('What is the next variable you would like to input?'.print_slowly, @@choices)
        end
          case response
            #
            when "I"
              @@choices = @@choices.select do |choice| choice != "I"
              end
               @interest = ask_for_interest
               opening_question
               #
            when "P"
              @@choices = @@choices.select do |choice| choice != "P"
              end
              @money_borrowed = ask_for_money_borrowed
              opening_question
              #
            when "r"
              @@choices = @@choices.select do |choice| choice != "r"
              end
              @interest_rate = ask_for_interest_rate
              opening_question
              #
            when "t"
              @@choices = @@choices.select do |choice| choice != "t"
              end
              @time_period = ask_for_time_period
              opening_question
          end
        else
          remaining_choice = @@choices[0]
          select_calculator(remaining_choice)
        end
  end


  def select_calculator(input)
    case input
      when "I"
        calculate_interest(@interest_rate,@money_borrowed,@time_period)
      when "P"
        calculate_money_borrowed(@interest,@interest_rate,@time_period)
      when "r"
        calculate_interest_rate(@interest,@money_borrowed,@time_period)
      when "t"
        calculate_time(@interest,@money_borrowed,@interest_rate)
    end
  end


  # class end
end
