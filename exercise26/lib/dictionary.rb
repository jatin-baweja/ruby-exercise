require_relative "string"
def get_max_lcs_length_from_suggestions(wrong_word, suggestions, length_of_lcs_hash)
  max_key = 0
  suggestions.each do |suggestion|
    key = wrong_word.length_of_longest_common_subsequence(suggestion)
    max_key = [key, max_key].max
    length_of_lcs_hash[key].push(suggestion)
  end
  max_key
end
class Dictionary
  def self.suggest_correct_word(wrong_word, suggestions)
    length_of_lcs_hash = Hash.new { |hash, key| hash[key] = [] }
    max_key = get_max_lcs_length_from_suggestions(wrong_word, suggestions, length_of_lcs_hash)
    length_of_lcs_hash[max_key]
  end
end