  def prompt(message)
    Kernel.puts("=> #{message}")
  end

  def valid_integer?(num)
    num.to_i.to_s == num
  end

  def valid_float?(num)
    num.to_f.to_s == num
  end

  loan = ''
  real_monthly_rate = ''
  months = ''
  

  loop do # main loop
  # input the loan amount
  loop do
    prompt("Welcome to Mortgage Calculator!")
    prompt("-------------------------------")
    prompt("Please enter your loan amount:")
    loan = Kernel.gets().chomp()

    if valid_integer?(loan) || valid_float?(loan)
      break
    else
      prompt("Sorry, it's not a valid number.")
    end
  end

  # input the APR
  loop do
    prompt("Please enter your APR:")
    yearly_rate = Kernel.gets().chomp().to_f # can be either integer or float
    monthly_rate = yearly_rate / 12
    Kernel.puts("Your APR is #{yearly_rate}\%, and monthly interest rate is #{monthly_rate}\%")
    
    if monthly_rate.to_f > 0
      real_monthly_rate = monthly_rate / 100
      break
    else
      prompt("Sorry, it's not a valid number.")
    end
  end

# input the loan duration
  loop do
    prompt("How many years do you want to pay?")
    years = Kernel.gets().chomp()
    months = years.to_i * 12
    Kernel.puts("You want to pay a #{years}-year mortgage(i.e. #{months} months in total).")

    if valid_integer?(years)
      break
    else
      prompt("Sorry, it's not a valid number(should be an integer in years).")
    end
  end

  # calculation
  monthly_payment = loan.to_f * (real_monthly_rate / (1 - (1 + real_monthly_rate)**(-months)))

  prompt("Your monthly payment is: $#{monthly_payment}.") # {format('%02.2f', monthly_payment)}

  prompt("Do you want to do another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase.start_with?('y')
  end

  prompt("Thank you for using Mortgage Calculator! Goodbye!")
