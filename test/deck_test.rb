require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require 'pry'

class DeckTest < Minitest::Test
    attr_reader :cards,
                :card_1,
                :card_2,
                :card_3

    def setup
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        @cards = [card_1, card_2, card_3]
    end

    # Does Turn exist
    def test_it_exists
        deck = Deck.new
        assert_instance_of Deck, deck
    end

    def test_count_returns_length
        deck = Deck.new(cards)
        assert_equal 3, deck.count
    end

    def test_cards_returns_all_cards
        deck = Deck.new(cards)
        assert_equal cards, deck.cards
    end

    def test_returns_specific_category_of_cards
        deck = Deck.new(cards)
        assert_equal [cards[1], cards[2]], deck.cards_in_category(:STEM)
    end

    def test_returns_empty_array
        deck = Deck.new(cards)
        assert_equal [], deck.cards_in_category(:SPORTS)
    end
end
