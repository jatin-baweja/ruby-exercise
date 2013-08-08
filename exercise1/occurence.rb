def count_alphabet_occurence(input_string)
  alphabet_hash = Hash.new(0)
  input_string = input_string.downcase
  input_string.each_char {|letter| alphabet_hash[letter] = alphabet_hash[letter] + 1 if letter =~ /[a-z]/ }
  alphabet_hash.each {|key,value| printf("%s : %3.0f\n", key, value) }
end
count_alphabet_occurence(gets)