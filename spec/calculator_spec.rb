require('rspec')
require('calculator_in_words')

describe('calculator') do
  it('takes a string such as 5 plus 3 and returns the result in numbers') do
    calculator('What is 5 plus 3?').should(eq(8))
  end
end
