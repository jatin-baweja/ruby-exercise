class String
  def character_group_count
    lowercase = 0
    uppercase = 0
    digit = 0
    special = 0
    lowercase_range = 'a'..'z'
    uppercase_range = 'A'..'Z'
    digit_range = '0'..'9'
    whitespace = /\s/
    each_char do |char|
      if lowercase_range === char
        lowercase += 1
      elsif uppercase_range === char
        uppercase += 1
      elsif digit_range === char
        digit += 1
      elsif !(char =~ whitespace)
        special += 1
      end
    end
    "\nLowercase : #{ lowercase }\nUppercase : #{ uppercase }\nDigits : #{ digit }\nSpecial Characters : #{ special }\n"
  end
end