class Array
  def convert_to_hash
    hash_of_element_length = Hash.new {|hash, key| hash[key] = [] }
    for element in self
      len = element.to_s.length
      hash_of_element_length[len].push(element)
    end
    hash_of_element_length
  end
end