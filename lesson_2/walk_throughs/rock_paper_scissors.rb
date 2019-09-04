  def prompt(message)
    Kernel.puts("=> #{message}")
  end

  VALID_CHOICE = %w(rock paper scissors)

  def win?(first, second)
    (first == 'rock' && second == 'scissors') ||
      (first == 'paper' && second == 'rock') ||
      (first == 'scissors' && second == 'paper')
  end

  def display_result(player, computer)
    if win?(player, computer)
      prompt("You won!")
    elsif win?(computer, player)
      prompt("Computer won!")
    else
      prompt("It's a tie!")
    end
  end

  loop do
    your_choice = ''

    loop do
      prompt("Choose one: #{VALID_CHOICE.join(', ')}")
      your_choice = Kernel.gets().chomp()

      if VALID_CHOICE.include?(your_choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICE.sample

    prompt("You chose #{your_choice}, computer chose #{computer_choice}!")
    display_result(your_choice, computer_choice)      

    prompt("Do you want to play this game again? (y/n)")
    answer = Kernel.gets().chomp()
    break unless answer.downcase.start_with?('y')
  end

  prompt("Thank you for playing with us! See you next time.")