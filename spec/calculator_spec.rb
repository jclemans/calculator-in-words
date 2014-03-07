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


  it('takes a larger number and divides it by a smaller number with a float output') do
    calculator('What is 2 divided by 4').should(eq(0.5))
  end

  it('takes a string such as 3 to the 3rd power and returns the numerical result') do
    calculator('What is 3 to the 3rd power').should(eq(27))
  end

  it('takes a string such as "what is 2 plus 2 minus 1 ?" and returns the numerical result') do
    calculator('What is 2 plus 2 minus 1').should(eq(3))
  end

  it("calculates the correct order of operations") do
    calculator("What is 2 plus 2 times 2").should(eq(6))
  end
    
end

