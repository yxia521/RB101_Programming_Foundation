produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce)
  fruit = {} 
  produce.select{|k, v| fruit[k] = v if v == 'Fruit'}
  p fruit
end

select_fruit(produce) 
p produce # the original is immutated.
