class RPS_Game

  CHOICES = %w(rock paper scissors)
  BEATS = {
    "rock" => "paper",
    "paper" => "scissors",
    "scissors" => "rock"
  }

  def initialize
    @choices = %w(rock paper scissors)
    @victor
  end

  def play
    print "Choose: #{@choices}"
    @user_answer = gets.chomp.downcase
    @computer_answer = CHOICES.sample
    puts @computer_answer
    determine_winner
  end

  def user_won?
    BEATS[@computer_answer] == @user_answer
  end

  def computer_won?
    BEATS[@user_answer] == @computer_answer
  end

  def determine_winner
    if user_won?
      puts "You win!"
    elsif computer_won?
      puts "You lose! HAHA!"
    else 
      puts "You tied"
    end
  end

end

RPS_Game.new.play
