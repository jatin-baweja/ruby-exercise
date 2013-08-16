class Array
  def convert_to_hash
    hash_of_element_length = Hash.new {|hash, key| hash[key] = [] }
    for i in 0...length
      len = self[i].to_s.length
      hash_of_element_length[len].push(self[i])
    end
    hash_of_element_length
  end
end