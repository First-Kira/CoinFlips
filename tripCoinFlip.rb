def flip_coin
  ["Heads", "Tails"].sample
end

def get_bet(coin_number)
  print "Place your bet for coin #{coin_number} (Heads/Tails): "
  gets.chomp.capitalize
end

def flip_and_compare(bet, result)
  if bet == result
    "Correct!"
  else
    "Wrong! The result was #{result}."
  end
end

# Get bets from the user
bets = []
3.times do |i|
  bets << get_bet(i + 1)
end

# Flip the coins
results = []
3.times do
  results << flip_coin
end

# Compare bets with results and display the outcome
bets.each_with_index do |bet, index|
  result = results[index]
  outcome = flip_and_compare(bet, result)
  puts "Your bet: #{bet}, Coin flip result: #{result} - #{outcome}"
end

