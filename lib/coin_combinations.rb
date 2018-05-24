require "pry"

class Integer

  def coin_combinations
    coin_collection_pennies = 0
    coin_collection_nickels = 0
    coin_collection_dimes = 0
    coin_collection_quarters = 0
    cents_amount = self
    while cents_amount > 24
      cents_amount -= 25
      coin_collection_quarters += 1
    end
    while cents_amount > 9
      cents_amount -= 10
      coin_collection_dimes += 1
    end
    while cents_amount > 4
      cents_amount -= 5
      coin_collection_nickels += 1
    end
    while cents_amount > 0
      cents_amount -= 1
      coin_collection_pennies += 1
    end
    if coin_collection_quarters == 0
      coin_collection_quarters = nil
    else
      coin_collection_quarters = coin_collection_quarters.to_s.concat(' quarters')
    end
    if coin_collection_dimes == 0
      coin_collection_dimes = nil
    else
      coin_collection_dimes = coin_collection_dimes.to_s.concat(' dimes')
      if coin_collection_quarters != nil
        coin_collection_dimes = coin_collection_dimes.to_s.insert(0, ' ')
      end
    end
    if coin_collection_nickels == 0
      coin_collection_nickels = nil
    else
      if coin_collection_quarters != nil && coin_collection_dimes != nil
        coin_collection_nickels = coin_collection_nickels.to_s.insert(0, ' ')
      end
      coin_collection_nickels = coin_collection_nickels.to_s.concat(' nickels')
    end
    if coin_collection_pennies == 0
      coin_collection_pennies = nil
    else
      if coin_collection_quarters != nil && coin_collection_dimes != nil && coin_collection_nickels != nil
        coin_collection_pennies = coin_collection_pennies.to_s.insert(0, ' ')
      end
      coin_collection_pennies = coin_collection_pennies.to_s.concat(' pennies')
    end
      result = coin_collection_quarters.to_s + coin_collection_dimes.to_s + coin_collection_nickels.to_s + coin_collection_pennies.to_s
  end
end
