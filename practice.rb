# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# 1. create 4 variables to represent each user's balance

bens_balance = 0
brians_balance = 0
evans_balance = 0
anthonys_balance = 0

# 2. loop through the "blockchain" transactions

for transaction in blockchain
  # each "transaction" in the "blockchain" array is a Hash
  #puts transaction
  # 3. if the user is the "from_user", decrement their balance
  
  if transaction["from_user"] == "ben"
    bens_balance = bens_balance - transaction["amount"]
  elsif transaction["from_user"] == "brian"
    brians_balance = brians_balance - transaction["amount"]
  elsif transaction["from_user"] == "evan"
    evans_balance = evans_balance - transaction["amount"]
  elsif transaction["from_user"] == "anthony"
    anthonys_balance = anthonys_balance - transaction["amount"]
  end

  # 4. if the user is the "to_user", increment their balance

  if transaction["to_user"] == "ben"
    bens_balance = bens_balance + transaction["amount"]
  elsif transaction["to_user"] == "brian"
    brians_balance = brians_balance + transaction["amount"]
  elsif transaction["to_user"] == "evan"
    evans_balance = evans_balance + transaction["amount"]
  elsif transaction["to_user"] == "anthony"
    anthonys_balance = anthonys_balance + transaction["amount"]
  end
end

# 5. finally, print out the result

puts "Ben's KelloggCoin balance is #{bens_balance}"
puts "Brian's KelloggCoin balance is #{brians_balance}"
puts "Evan's KelloggCoin balance is #{evans_balance}"
puts "Anthony's KelloggCoin balance is #{anthonys_balance}"

