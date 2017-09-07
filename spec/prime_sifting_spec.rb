require('rspec')
require('pry')
require('prime_sifting')

describe('prime_calculator') do
  it("takes a number and makes an array of numbers from 2 to that number") do
    expect(prime_calculator(6)).to(eq([2, 3, 4, 5, 6]))
  end

  it("takes an array and slices numbers that aren't prime") do
    expect(prime_calculator(20)).to(eq([2, 3, 5, 7, 11, 13, 17, 19]))
  end
end
