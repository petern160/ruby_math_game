require './player'
require './question'

print "Player 1: "
player_one_name = gets.chomp
print "Player 2: "
player_two_name = gets.chomp

player1 = Players.new(player_one_name)
player2 = Players.new(player_two_name)

current_player = 1

while(player1.lose? && player2.lose?) do
    player =  current_player == 1 ? player1 : player2

    question = Questions.new

    puts "-----New Turn-----"

    puts "#{player.name}: #{question.output}"

    answer = gets.chomp.to_i

    if answer == question.answer
        puts "YES! you are correct."
        puts "#{player1.name} #{player1.life}/3 lives and #{player2.name} #{player2.life}/3"
    else
        player.life -= 1
        puts "Seriously? No!"
        puts "#{player1.name} #{player1.life}/3 and #{player2.name} #{player2.life}/3"
    end
    current_player = (current_player + 1) % 2
end

if player1.life == 0
    puts "---#{player2.name} wins with with a score of #{player2.life}/3 "
 elsif player2.life == 0
    puts "---#{player1.name} wins with a score of #{player1.life}/3 "
 end
 
 puts "-----GAME OVER-----"