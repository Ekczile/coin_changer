require "minitest/autorun"
require_relative "coinchanger.rb"


class Testallconversions < Minitest::Test
    def test_1
        assert_equal(1,1)
    end
    def test_for_1_quarter
        assert_equal({:quarter => 1}, coin_counter(25))
    end 
    def test_for_2_pennys
        assert_equal({:quarter => 2}, coin_counter(50))
    end
end