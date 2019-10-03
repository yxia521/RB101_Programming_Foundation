# returns one UUID when called with no parameters

# rule: each UUID consists of 32 hexademical characters, typically into 5 section
# like: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12] # integers representing the number of characters in each section
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1 # index >= 4
  end

  uuid
end

generate_UUID

# => one of results will be like: "389bafb9-0e47-8835-509c-80ac52218588" 
