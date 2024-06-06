def flip_coin
  ["Heads", "Tails"].sample
end

def get_bet
  print "Place your bet (Heads/Tails): "
  gets.chomp.capitalize
end

def flip_and_compare(bet, result)
  if bet == result
    "Correct!"
  else
    "Wrong! The result was #{result}."
  end
end

# Get bet from the user
bet = get_bet

# Flip the coin
result = flip_coin

# Compare bet with result and display the outcome
outcome = flip_and_compare(bet, result)
puts "Your bet: #{bet}, Coin flip result: #{result} - #{outcome}"

