require_relative "./Player"
require_relative "./Question"

class MathGame
  def initialize (one, two)
    @player1 = Player.new(one)
    @player2 = Player.new(two)
    @players = [@player1, @player2]
  end

  def display_challenge
    puts "--------- NEW TURN -------------"
    puts "---------- #{@players.first.name} -------------"
  end

  def game_over?
    @player1.no_life? || @player2.no_life?
  end

  def winner
    @player1.no_life? ? @player2.name : @player1.name
  end

  def display_winner
    puts
    puts "The winner is #{winner}"
  end

  def play
    while !game_over? do
      puts "lives_remaining #{@player1.name}: #{@player1.lives_remaining}"
      puts "lives_remaining #{@player2.name}: #{@player2.lives_remaining}"
      active = @players.first
      display_challenge
      new_question = Question.new(active)
      new_question.ask_question
      @players.rotate!
    end
    
    display_winner
  end
end