number = rand(1..100)
counter = 0
score = 100

loop do
#counts how many attempts have been done
  counter += 1
  if  counter > 10
    puts "Too many attempts, game over."
    break
  end
#asks for user input and prompt an alert message if the input is not a number
  puts "Guess a number:"
  begin
    guess = Integer(gets.chomp)
  rescue
    print "Please enter a number:"
    retry
  end
#check if the guessed number is equal to the computer random number and stops the loop
  if guess == number
      puts "You win!! Score:#{score}"
      break
#using true | false display a meesage if the guessed number is higher or lower to the target one
  else
    puts guess > number ?  "Lower! Score:#{score}" : "Higher! Score:#{score}"
  end
#updates the score
  score -= 10
end
