class String
  def length_of_longest_common_subsequence(word)
    common_subsequence_length = Array.new(length + 1) { Array.new(word.length + 1) }
    for i in 0..length
      for j in 0..word.length
        if i == 0 || j == 0
          common_subsequence_length[i][j] = 0
        elsif self[i - 1] == word[j - 1]
          common_subsequence_length[i][j] = common_subsequence_length[i - 1][j - 1] + 1
        else
          common_subsequence_length[i][j] = [ common_subsequence_length[i - 1][j], common_subsequence_length[i][j - 1] ].max
        end
      end
    end
    common_subsequence_length[i][j]
  end
end