puts "=> What is the bill?"
bill = gets.chomp.to_f
puts "=> What is the tip percentage?" 
tip_rate = gets.chomp.to_f

tip = bill * (tip_rate / 100)
total = (tip + bill)
puts "=> The tip is $#{sprintf("%.2f", tip)}." # Kernel format, always show 2 decimal 
puts "=> The total is $#{sprintf("%.2f", total)}."
