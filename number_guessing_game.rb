def number_guessing_game
  secret_number = rand(1..100)
  tries = 0
  
  puts "I have selected a random number between 1 and 100."
  puts "Can you guess what it is?"
  
  loop do
    print "Your guess: "
    guess = gets.chomp.to_i
    tries += 1
    
    if guess == secret_number
      puts "Congratulations! You've guessed the number in #{tries} tries."
      break
    elsif guess < secret_number
      puts "Too low. Try again."
    else
      puts "Too high. Try again."
    end
  end
end

number_guessing_game
