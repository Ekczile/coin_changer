require "minitest/autorun"
require_relative "coinchanger.rb"


class Testallconversions < Minitest::Test
    def test_1
        assert_equal(1,1)
    end
    def test_for_1_quarters
        assert_equal({:quarters => 1}, coin_counter(25))
    end 
    def test_for_2_quarterss
        assert_equal({:quarters => 2}, coin_counter(50))
    end
    def test_for_1_quarters_1_dime
        assert_equal({:quarters=> 1, :dime=> 1}, coin_counter(35))
    end
    def test_for_2_quarterss_2_dimes
        assert_equal({:quarters=> 2, :dimes=> 2}, coin_counter(70))
    end
    def test_for_1_quarters_1_dime_and_1_nickle
        assert_equal({:quarters=> 1, :dime=> 1, :nickle=> 1},coin_counter(40))
    end
    def test_for_2_quarters_1_dime_and_1_nickle
        assert_equal({:quarters => 2, :dime => 1, :nickle => 1},coin_counter(65))
    end
    def test_for_2_quarters_1_dime__1_nickle_and_4_pennys
        assert_equal({:quarters => 2, :dime => 1, :nickle => 1, :pennys => 4},coin_counter(69))
    end
    def test_first_big_num
        assert_equal({:quarters=>108000},coin_counter(2700000))
    end
    def test_really_big_number
        assert_equal({:quarters=>22436000, :pennys=>2},coin_counter(560900002))
    end
    def test_for_string_or_symbols
        assert_equal("Please use Integers only.",coin_counter("can you change this?"))
    end
    def test_for_1_penny
        assert_equal({:penny => 1}, coin_counter(1))
    end
    def test_for_1q_1p
        assert_equal({:quarters=>1, :penny=>1},coin_counter(26))
    end
    def test_for_2d
        assert_equal({:dimes=>2},coin_counter(20))
    end
    def test_for_float
        assert_equal("Please use Integers only.",coin_counter(25.5))
    end
end 
