require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'

class TurnTest < Minitest::Test
    attr_reader :card

    def setup
        @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    end

    # Does Turn exist
    def test_it_exists
        turn = Turn.new("Juneau", card)
        assert_instance_of Turn, turn
    end

    # Does a Card exist on Turn
    def test_it_has_card
        turn = Turn.new("Juneau", card)
        assert_equal card, turn.card
    end
    
    # Does a guess method return a guess
    def test_it_has_a_guess
        turn = Turn.new("Answer", card)
        assert_equal "Answer", turn.guess
    end
    
    # Does a correct method return the correct boolean
    def test_it_has_a_guess
        turn = Turn.new("Answer", card)
        assert_equal "Answer", turn.guess
    end
    
    # Does a feedback method return the correct feedback
    def test_it_has_correct_as_feedback
        turn = Turn.new("Juneau", card)
        assert_equal "Correct!", turn.feedback
    end

    # Does a feedback method return the correct feedback
    def test_it_has_incorrect_as_feedback
        turn = Turn.new("WrongAnswer", card)
        assert_equal "Incorrect.", turn.feedback
    end
end
