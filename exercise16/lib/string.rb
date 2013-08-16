class String
  def find_occurence_of(word)
    counter = 0
    regex_of_word = Regexp.new("(" + word + ")","i")
    replaced_string = gsub(regex_of_word) do |matched_string|
      counter += 1
      "(" + matched_string + ")"
    end
    replaced_string + "\nTotal Occurences found: " + counter.to_s
  end
end