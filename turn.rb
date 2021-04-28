require './question'
require './player'

class Turn
  attr_accessor :player, :question
  
  def initialize(player)
    @question = Question.new
    @player = player
  end

  def play
    puts ""
    puts "----- NEW TURN -----"
    print "#{self.player.name}: #{self.question.ask}\n> "
    attempt = gets.chomp.to_i
    if self.question.check_result(attempt)
      puts "#{self.player.name}: YES! You are correct"
      self.player.lives_count( win = true )
    else
      puts "#{self.player.name}: Seriously? No!"
      self.player.lives_count( win = false )
    end 
  end

end