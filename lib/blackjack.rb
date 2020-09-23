def welcome
  puts ("Welcome to the Blackjack Table")
end

def deal_card
 return rand(1..11)
end

def display_card_total(card_total)
  puts ("Your cards add up to #{card_total}")
end

def prompt_user
  puts ("Type 'h' to hit or 's' to stay")
end

def get_user_input
 gets.chomp
end

def end_game(card_total)
  puts ("Sorry, you hit #{card_total}. Thanks for playing!")
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total);
  
  total
end

def invalid_command
 puts "Please enter a valid command"
end

def hit?(total)
  prompt_user
  choice = get_user_input;
  if choice == 'h' then
    new_card = deal_card()
    total += new_card
    display_card_total(total)
  elsif not(choice == 's') then
    invalid_command
    prompt_user
  end
  total
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round;
  while true do
    total = hit?(total)
    if total > 21 then
      break
    end
  end
  end_game(total)
  # code runner here
end
    
