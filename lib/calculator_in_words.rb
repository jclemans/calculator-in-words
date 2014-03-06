def calculator(string)
  equation_array = []
  question_array = string.downcase.gsub(/[^a-z\s\d]/, '').split(" ")
  
  question_array.each do |word|
    if word.scan(/[\d]/)
      equation_array << word.to_i
    end
  end
  equation_array.inject(0) {|sum, i| sum + i}
  
end

print calculator("What is 5 plus 3?")
