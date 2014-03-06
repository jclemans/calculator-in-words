require('rspec')
require('calculator_in_words')

describe('calculator') do
  it('takes a string such as 5 plus 3 and returns the result in numbers') do
    calculator('What is 5 plus 3?').should(eq(8))
  end

  it('takes a string such as 8 minus 2 and returns the result in numbers') do
    calculator('What is 8 minus 2').should(eq(6))
  end

  it('takes a string such as 3 times 5 and returns the result in numbers') do
    calculator('What is 3 times 5').should(eq(15))
  end

  it('takes a string such as 16 divided by 8 and returns the result in numbers') do
    calculator('What 16 divided by 8').should(eq(2))
  end

end

