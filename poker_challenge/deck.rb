class Deck
  def initialize
    @deck = []
    @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    @suits = %w(Spades Hearts Diamonds Clubs)
  end

  def deal_to_players
    @suits.each do |suit|
      @ranks.each do |rank|
        @deck << rank + " of " + suit
      end
    end
  end

  def shuffle
    @deck.shuffle
  end

  def get_cards_from_deck
    @deck.shift(5)
  end
end

deck = Deck.new
deck.deal_to_players
# puts deck.shuffle
puts deck.shuffle
