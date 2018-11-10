def coin_counter(coins)
    hash = Hash.new
    quarter = coins / 25
    hash.merge!(:quarter => quarter)
    p hash
    return hash
end