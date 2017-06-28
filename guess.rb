# guess

correct_number = rand(1..100)
user_health = 10

loop do

  puts "#{11 - user_health}) Make a guess (1-100):"
  guess = gets.chomp.to_i

  case
  when guess == correct_number
    puts "YES! You smart, you loyal."
    break
  when guess > correct_number
    print "Lower! "
  when guess < correct_number
    print "Higher! "
  end

  user_health -= 1

  if user_health <= 0
    puts "***GAME OVER***"
    break
  end

  puts "Try again. You still have #{user_health} tries."

end
