#set class hand with attr_reader :cards
#Rank the cards from pair to straight_flush - freeze them for sanitizaiton
#set and initialize method passing the argument cards
#   cards.count must always equal 5
#create ? methods for every set of cards. This means researching a lot of other
#methods
require "./poker_deck"

ACE_LOW = 1
ACE_HIGH = 14


class Hand
  attr_reader :cards

RANKS = {
  straight_flush:  8,
  four_of_a_kind:  7,
  full_house:      6,
  flush:           5,
  straight:        4,
  three_of_a_kind: 3,
  one_pair:        2,
  high_card:       1
}.freeze


def initialize(cards)
  cards.count == 5
  @cards = cards.freeze
end

def rank
  RANKS.detect { |method, rank| send :"#{method}?"} || [:high_card, 0]
end

#Type as in :flush or :full_house
def type
  rank.first
end

def base_score
  rank.last
end


end
