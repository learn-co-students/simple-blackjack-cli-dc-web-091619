def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = rand(1..11)
end

def display_card_total(hand)
  puts "Your cards add up to #{hand}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(hand)
  puts "Sorry, you hit #{hand}. Thanks for playing!"
end

def initial_round
  total = 0
  total += deal_card
  total += deal_card
  display_card_total(total)
  total
end

def hit?(hand)
  prompt_user
  answer = get_user_input
  if answer == 'h'
    hand += deal_card
  elsif answer != 's'
    invalid_command
    prompt_user
    get_user_input
  end
  hand
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  handz = initial_round
  until handz > 21 do
    new_hand = hit?(handz)
    if new_hand == handz
      puts "Are you sure you want to stay?"
      prompt_user
      break if get_user_input == 's'
    end
    handz = new_hand
    display_card_total(new_hand)
  end
  end_game(handz)
end
    
