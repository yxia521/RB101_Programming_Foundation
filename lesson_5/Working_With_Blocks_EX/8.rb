[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end

#=> [[27], ["apple"]]

# One of the main reasons map is used in this example is not only to iterate over the array and access the nested arrays, 
# but to return a new array containing the selected values. 
# If we used each instead we wouldn't have the desired return value, and would need an extra variable to collect the desired results.
