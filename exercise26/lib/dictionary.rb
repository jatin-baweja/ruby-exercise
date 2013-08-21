require_relative "string"
class Dictionary
  def self.suggest_correct_word(wrong_word, suggestions)
    length_of_words_hash = Hash.new { |hash, key| hash[key] = [] }
    max_key = 0
    suggestions.each do |suggestion|
      key = wrong_word.length_of_longest_common_subsequence(suggestion)
      if key > max_key
        max_key = key
      end
      length_of_words_hash[key].push(suggestion)
    end
    length_of_words_hash[max_key]
  end
end