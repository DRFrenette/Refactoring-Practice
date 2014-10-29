require "./deck.rb"

class Player
  
  def initialize
    @hand = []
  end

  def hand
    @hand.each do |card|
      puts(card)
    end
  end
end
