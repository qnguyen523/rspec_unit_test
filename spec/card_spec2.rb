class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end
RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }
  it 'has a rank' do
    expect(card.rank).to eq 'Ace'
  end
  it 'has a suit' do
    expect(card.suit).to eq 'Spades'
  end
  it 'has a custom error message' do
    com = 'Spade'
    expect(card.suit).to eq(com), "Hey, I expected #{com} but I got #{card.suit} instead"
  end
end
