require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'

class TurnTest < Minitest::Test
    attr_reader :card

    def setup
        @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    end

    def test_it_exists

        assert_instance_of Turn, turn
    end

    # Does Turn exist
    # Does a Card exist on Turn
    # Does a guess method return a guess
    # Does a card method return a card object
    # Does a correct method return the correct boolean
    # Does a feedback method return the correct feedback

end
