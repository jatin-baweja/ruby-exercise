def check_palindrome(input_string)
  while !(input_string =~ /^q$/i)
    if input_string == input_string.reverse
      print input_string + " is a palindrome\n"
    else
      print input_string + " is not a palindrome\n"
    end
    puts "Enter a string (Enter 'q' OR 'Q' to quit):"
    input_string = gets.chomp
  end
end