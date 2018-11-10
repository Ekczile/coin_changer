require "minitest/autorun"
require_relative "coinchanger.rb"


class Testallconversions < Minitest::Test
    def test_1
        assert_equal(1,1)
    end
    def test_for_1_quarter
        assert_equal({:quarter => 1}, coin_counter(35))
    end 
    # def test_for_2_pennys
    #     assert_equal("", coin_counter(2))
    # end
end