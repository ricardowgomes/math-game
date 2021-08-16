class Question
  def initialize(player)
    @operations = ["+", "-", "*", "/"]
    @active = player
  end

  def round_question
    @random_num_one = rand(1..20) 
    @random_num_two = rand(1..20)
    @operation = @operations.sample

    if @operation == "+" 
      @answer = @random_num_one + @random_num_two
    end

    if @operation == "-" 
      @answer = @random_num_one - @random_num_two
    end

    if @operation == "*" 
      @answer = @random_num_one * @random_num_two
    end

    if @operation == "/" 
      @answer = @random_num_one / @random_num_two
    end
  end

  def ask_question
    round_question
    puts "What does #{@random_num_one} #{@operation} #{@random_num_two} equal:"
    player_answer = gets.chomp.to_i
    

    if @answer == player_answer
      puts "CORRECT!!!"
    else
      puts "INCORRECT..."
      @active.lose_life
    end
  end
end

# question1 = Question.new
# puts question1[:question]