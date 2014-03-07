def calculator(string)
  operators = {"plus" => "+", "minus" => "-", "times" => "*", "divided" => "/", "power" => "**"}
  number_array = []
  operators_array = []
  question_array = string.downcase.gsub(/[^a-z\s\d]/, '').split(" ")
  
  question_array.each do |word|
    if word == "plus" || word == "minus" || word == "times" || word == "divided" || word == "power"
      operators_array << operators[word]
    end
  end

  question_array.each do |word|
    if word.scan(/[\d]/)
      number_array << word.to_f
      number_array.delete(0)
    end
  end

  zipped_array = number_array.zip(operators_array).flatten.compact.join(' ')
  eval(zipped_array)

end
puts calculator("What is 3 to the 3rd power?")
