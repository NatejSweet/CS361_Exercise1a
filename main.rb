# Nathan Sweet
# CS361
# Exercise 1a
# This program creates an array of of 50 player objects
# Each player abject will have a name attribute, and a random score attribute from 10 to 300

class Player      #a player object, housing their score and name
    def initialize(playerNum, score)    #constructor
        @name = "Player "+playerNum.to_s    #concatenating the player nunber into their name
        @score = score
    end
    def name()  #function that returns the name of the player
        @name
    end
    def score   #function that returns the score of the player
        @score  
    end
end
players = Array.new #creating an empty array for all the players

for i in 0..49 do   #for loop, iterating from 0 to 49 inclusive ( totalling 50 players )
    players.push(Player.new(i,rand(10..300)))   #instantiating a new player object, passing the constructor the player number and a random score from 10 to 300 inclusive
end
for i in players do #for loop iterating through the array of players
    puts "Ready "+i.name+"! Score:"+i.score.to_s    #Accessing the player's attributes and placing them in a formatted string, then printed to the console
end