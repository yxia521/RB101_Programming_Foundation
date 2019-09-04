  require "pry"

  counter = 0
  loop do
    counter += 1
    binding.pry # execution stops here
    break if counter == 5
  end

  # enter exit-program to exit
  # enter Ctrl+D to continue running