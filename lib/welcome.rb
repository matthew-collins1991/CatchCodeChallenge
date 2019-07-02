
def welcome
  puts 'Welcome to Funky Finance!'.print_slowly
  puts 'What sort of number is the first variable?'.print_slowly
  run = Program.new
  run.opening_question
end


class Program

  attr_accessor :interest, :interest_rate, :time_period, :money_borrowed

    @@choices = [
      "I", "P", "r", "t"
    ]

  def opening_question
    if @@choices.length > 1
      prompt = TTY::Prompt.new
          response = prompt.select("", @@choices)
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
          runCalculator
        end
  end


  def runCalculator
    puts "hello #{@@choices}"
  end
end
