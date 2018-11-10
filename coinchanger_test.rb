require "minitest/autorun"
require_relative "coinchanger.rb"


class Testallconversions < Minitest::Test
    def test_1
        assert_equal(1,1)
    end
    def test_for_1_quarter
        assert_equal({:quarter => 1}, coin_counter(25))
    end 
    def test_for_2_quarters
        assert_equal({:quarter => 2}, coin_counter(50))
    end
    def test_for_1_quarter_1_dime
        assert_equal({:quarter=> 1, :dime=> 1}, coin_counter(35))
    end
    def test_for_2_quarters_2_dimes
        assert_equal({:quarter=> 2, :dime=> 2}, coin_counter(70))
    end
end 
