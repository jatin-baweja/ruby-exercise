def is_palindrome(input_string)
  while !(input_string =~ /^q$/i)
    if input_string == input_string.reverse
      print input_string + " is a palindrome\n"
    else
      print input_string + " is not a palindrome\n"
    end
    input_string = gets.chomp
  end
end
is_palindrome(gets.chomp)