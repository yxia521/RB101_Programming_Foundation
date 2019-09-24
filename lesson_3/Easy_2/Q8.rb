# ...remove everything starting from "house".
advice = "Few things in life are as important as house training your pet dinosaur."

# index(house) = 39
# slice!(0, 39)
advice.slice!(0, advice.index('house')) 
#=> "Few things in life are as important as " 
# advice = "Few things in life are as important as " 

advice.slice(0, advice.index('house')) 
#=> "Few things in life are as important as "
# advice = "Few things in life are as important as house training your pet dinosaur."
