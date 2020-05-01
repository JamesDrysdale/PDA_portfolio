require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../card_game")
require_relative("../card")

class CardGameTest < MiniTest::Test

    def setup
        @card1 = Card.new("Hearts", 6)
        @card2 = Card.new("Spades", 1)
        @card3 = Card.new("Clubs", 6)

        @cards = [@card1, @card2]
    end

    # Test 1st method - check whether the card is an ace or not
    def test_check_for_ace__true
        assert_equal(true, CardGame.check_for_ace(@card2))
    end

    def test_check_for_ace__false
        assert_equal(false, CardGame.check_for_ace(@card1))
    end

    # Test which of two cards has the highest value
    def test_highest_card
        assert_equal(@card1, CardGame.highest_card(@card1, @card2))
    end

    # Test method to get sum of card values
    def test_cards_total
        (assert_equal("You have a total of 7", CardGame.cards_total(@cards)))
    end

end