def coin_counter(coins)
    hash = Hash.new
    if coins >= 25
        quarter = coins / 25
        hash.merge!(:quarter => quarter)
        coins -= quarter * 25
    end
    if coins >= 10
        dime = coins / 10
        hash.merge!(:dime => dime)
        coins -= dime * 10
    end
    if coins >= 5
        nickle = coins / 5
        hash.merge!(:nickle => nickle)
        coins -= dime * 5
    end
    p hash
    return hash
end