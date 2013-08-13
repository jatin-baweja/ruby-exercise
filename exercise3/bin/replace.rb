def replace_vowels(input_string)
  input_string = input_string.gsub(/[aeiou]/i, "*")
  print input_string
end
replace_vowels(gets)