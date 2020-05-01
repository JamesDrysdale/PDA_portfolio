require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../card_game")
require_relative("../card")

class CardGameTest < MiniTest::Test

    def setup
        @card1 = Card.new("Hearts", 6)
        @card2 = Card.new("Spades", 1)

        @cards = [@card1, @card2]
    end

end

# Test 1st method - check whether the card is an ace or not

def test_check_for_ace__true
    assert_equal(true, CardGame.check_for_ace(@card2))
end