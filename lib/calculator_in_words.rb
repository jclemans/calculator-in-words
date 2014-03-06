def calculator(string)
  equation_array = []
  question_array = string.downcase.gsub(/[^a-z\s\d]/, '').split(" ")
  
  question_array.each do |word|
    if word.scan(/[\d]/)
      equation_array << word.to_i
      equation_array.delete(0)
    end
  end
  if question_array.include?("plus")
    equation_array.inject(0) {|sum, i| sum + i}

  elsif question_array.include?("minus")
    equation_array.inject {|sub, i| sub - i}  

  elsif question_array.include?("times")
    equation_array.inject {|mult, i| mult * i}

  else question_array.include?("divided")
    equation_array.inject {|div, i| div / i}
  
  end  
end

print calculator("3 divided 9?")
