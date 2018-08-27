
# card.rb

class Card
  attr_reader :value, :suit

CARD_VALUES = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
CARD_SUITS = [:hearts, :spades, :clubs, :diamonds]

  def initialize(value, suit)
    unless CARD_VALUES.include?(value) &&  CARD_SUITS.include?(suit)
      return raise ArgumentError, 'Invalid Card Input'
    end
    @value = value
    @suit = suit
  end

  def to_s
    case
    when value == 1
      return "Ace of #{suit.to_s}"
    when value == 11
      return "Jack of #{suit.to_s}"
    when value == 12
      return "Queen of #{suit.to_s}"
    when value == 13
      return "King of #{suit.to_s}"
    end
    return "#{value} of #{suit.to_s}"
  end

end
