def replace_vowels(input_string)
  input_string = input_string.gsub(/a|e|i|o|u/i, "*")
  print input_string
end
replace_vowels(gets)