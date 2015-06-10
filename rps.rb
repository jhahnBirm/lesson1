#!/usr/bin/ruby
#Rock Paper Scissors
#1.Participatns choose either R P S
#2. Computer chooses either R P S
#Compare
#results communicated

CHOICES = {'r'=>'Rock', 'p'=>'Paper','s'=>'Scissors'}

def display_winner(choice)
  case choice
    when 'p'
    puts "Paper covers rock"
    when 'r'
    puts "Rock smashes scissors"
    when 's'
    puts "Scissors shreads paper"
  end
end

loop do
puts"Welcome to Rock, Paper, Scissors"
  begin
#player chooses
    puts "choose 'r','p', or 's'"

    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

#computer choice
computer_choice = CHOICES.keys.sample

#compare
  if player_choice == computer_choice
      puts "It's a tie!"
  elsif (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p') ||
    (player_choice == 'p' && computer_choice == 'r')
    display_winner(player_choice)
    puts "You Won!!"
  else
    display_winner(computer_choice)
    puts "Computer Won!"
  end

  puts "Do you want to play again (y/n)"

  break if gets.chomp != 'y'

end
