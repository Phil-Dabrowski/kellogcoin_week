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

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
#puts "#{blockchain[1]}"
#transaction = blockchain[3]
#from_user = transaction["from_user"]
#to_user = transaction["to_user"]
#amount = transaction["amount"]
#transaction["to_user"] =
#puts from_user
#puts to_user
#puts amount
#puts blockchain.size
puts "Starting Loop"
index = 0
ben = 0
loop do
    if index == blockchain.size
      break
    end
   puts "Loop #{index} started"
   puts "ben's beggining bank statement #{ben}"
    transaction = blockchain[index]
    from_user = transaction["from_user"]
    to_user = transaction["to_user"]
    amount = transaction["amount"]
    puts "from_user is #{from_user}"
    puts "to_user is #{to_user}"
    puts "amount is #{amount}"
      if from_user == "ben" # Difference between when needing to use == and = 
      ben = ben - amount
    
      elsif to_user == "ben"
      ben = ben + amount
      else
      end
  index = index + 1
  puts "ben's current bank statement #{ben}"
    end

    puts ben
puts "Run Complete"
#Do I need to keep an array to collect peoples unique people names? 