class String
  def find_occurence_of(word)
    counter = 0
    regex_of_word = Regexp.new(Regexp.escape(word),"i")
    replaced_string = gsub(regex_of_word) do |matched_string|
      counter += 1
      "(" + matched_string + ")"
    end
    { :replacement => replaced_string, :count => counter }
  end
end