  # .yml configuration file
  require 'yaml' 
  MESSAGES = YAML.load_file('calculator_messages.yml') # MESSAGES is a hash
  # puts MESSAGES.inspect # if you want to check
  
  def messages(message, lang='en')
    MESSAGES[lang][message]
  end

  def prompt(message)
    Kernel.puts("=> #{message}") # add => to every prompt by calling this, do not do manually
  end

  # /^ start of string, $/ end of string, \d test all digits, + one or more
  def valid_number?(num)
    /^\d+$/.match(num) 
  end

  def operation_to_message(op)
    word = case op
    when '1'
      'Adding'
    when '2'
      'Substrating'
    when '3'
      'Multiplying'
    when '4'
      'Dividing'
    end
    word
  end

  prompt(messages('welcome', 'es'))
  name = ''
  loop do
    name = Kernel.gets().chomp()

    if name.empty?()
      prompt(MESSAGES['valid_name'])
    else
      break
    end
  end

  prompt("Hi #{name}!")

  number1 = '' # initialize the number 1&2 outside of loop
  number2 = ''

loop do # main loop
  loop do
    prompt(MESSAGES['first_number'])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['not_valid_number'])
    end
  end

  loop do
    prompt(MESSAGES['second_number'])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['not_valid_number'])
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) substract
  3) multiply
  4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['valid_operator'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
  when "1"
    result = number1.to_i() + number2.to_i()
  when "2"
    result = number1.to_i() - number2.to_i()
  when "3"
    result = number1.to_i() * number2.to_i()
  when "4"
    result = number1.to_f() / number2.to_f()
  end

  prompt("The result is #{result}")

  prompt(MESSAGES['calculate_again'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['end'])