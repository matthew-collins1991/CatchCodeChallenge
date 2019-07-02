
def welcome
  puts 'Welcome to Funky Finance!'.print_slowly
  puts 'What sort of number is the first variable?'.print_slowly
  run = Program.new
  run.opening_question
end


class Program

attr_accessor :interest, :interest_rate, :time, :money_borrowed

  @@choices = [
    "I", "P", "r", "t"
  ]

def opening_question
  prompt = TTY::Prompt.new
      response = prompt.select("", @@choices)
      case response
        when "I"
          @@choices = @@choices.select do |choice|
            choice != "I"
          end
           puts
        when "P"
          puts "ask_for_money_borrowed"
        when "r"
          puts "ask_for_interest_rate"
        when "t"
          puts "ask_for_time_period"
      end
end


end
