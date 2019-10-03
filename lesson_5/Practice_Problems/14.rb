# return an array containing the colors of the fruits and the sizes of the vegetables
# The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_arr = []
hsh.each_value do |details|
  if details[:type] == 'fruit'
    new_arr << details[:colors].map{|string| string.capitalize}
  elsif details[:type] == 'vegetable'
    new_arr << details[:size].upcase
  end
end
new_arr
