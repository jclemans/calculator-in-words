def calculator(string)
  equation_array = []
  question_array = string.downcase.gsub(/[^a-z\s\d]/, '').split(" ")
  
  question_array.each do |word|
    if word.scan(/[\d]/)
      equation_array << word.to_f
      equation_array.delete(0)
    end
  end
  #[2, plus, 2, minus, 1]
  #question_array.each do |operator|
    if question_array.any? { |word| ["plus", "added", "sum"].include?(word) }
      add_result = equation_array.inject {|sum, i| sum + i}

    elsif question_array.any? { |word| ["minus", "from"].include?(word) }
      minus_result = equation_array.inject {|sub, i| sub - i}  

    elsif question_array.any? { |word| ["times", "multiplied", "x", "X"].include?(word) }
      times_result = equation_array.inject {|mult, i| mult * i}

    elsif question_array.any? { |word| ["divided", "into"].include?(word) }
      divided_result = equation_array.inject {|div, i| div / i}
    
    elsif question_array.any? { |word| ["power"].include?(word) }
      power_result = equation_array.inject {|pow, i| pow ** i}

    else puts "Does not compute, human!"
    end  
end

print calculator("what's 2 plus 2 minus 1 ?")
