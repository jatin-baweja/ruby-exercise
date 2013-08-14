class String
  def character_group_count
    lowercase = 0
    uppercase = 0
    digit = 0
    special = 0
    each_char do |char|
      if ('a'..'z') === char
        lowercase += 1
      elsif ('A'..'Z') === char
        uppercase += 1
      elsif ('0'..'9') === char
        digit += 1
      elsif !(char =~ /\s/)
        special += 1
      end
    end
    "\nLowercase : #{lowercase}\nUppercase : #{uppercase}\nDigits : #{digit}\nSpecial Characters : #{special}\n"
  end
end