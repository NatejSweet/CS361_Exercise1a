# Nathan Sweet
# CS361
# Exercise 1a
# This program creates an array of of 50 player objects
# Each player abject will have a name attribute, and a random score attribute from 10 to 300

class Player 
    def initialize(playerNum, score)
        @name = "Player "+playerNum.to_s
        @score = score
    end
    def name()
        @name
    end
    def score
        @score
    end
end
players = Array.new

for i in 0..49 do
    players.push(Player.new(i,rand(10..300)))
end
puts players.size
for i in players do
    puts "Ready "+i.name+"! Score:"+i.score.to_s
end