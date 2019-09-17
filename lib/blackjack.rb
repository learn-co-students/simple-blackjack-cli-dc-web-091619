require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
  # random_number = rand(1..11)
  # return random_number
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(current_card_total)
  prompt_user
  total = get_user_input
  # binding.pry
  if total == "h"
    current_card_total += deal_card
    elsif total == "s"
    current_card_total
  else 
    invalid_command
    prompt_user
    get_user_input
  end
  return current_card_total
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  card_total = initial_round
  # binding.pry
  until card_total > 21 
    card_total = hit?(card_total)
   display_card_total(card_total)
  end
  end_game(card_total)
end
    
