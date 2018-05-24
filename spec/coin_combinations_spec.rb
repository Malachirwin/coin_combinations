require "rspec"
require 'coin_combinations'

describe('coin_combinations') do
  it('takes number of cents and converts it to coins') do
    expect(45.coin_combinations).to eq('1 quarters 2 dimes')
  end
  it('takes number of cents that requires all coin type') do
    expect(43.coin_combinations).to eq('1 quarters 1 dimes 1 nickels 3 pennies')
  end
  it('takes large number of cents') do
    expect(1000.coin_combinations).to eq('40 quarters')
  end
  it('takes  ten cents') do
    expect(10.coin_combinations).to eq('1 dimes')
  end
  it('takes  25 cents') do
    expect(25.coin_combinations).to eq('1 quarters')
  end
  it('takes  5 cents') do
    expect(5.coin_combinations).to eq('1 nickels')
  end
  it('takes 1 cents') do
    expect(1.coin_combinations).to eq('1 pennies')
  end
  it('takes  lagest amount of cents ') do
    expect(85294.coin_combinations).to eq('3411 quarters 1 dimes 1 nickels 4 pennies')
  end
end
