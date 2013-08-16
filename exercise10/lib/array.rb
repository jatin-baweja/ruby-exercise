class Array
  def convert_to_hash
    length_hash = Hash.new {|hash, key| hash[key] = [] }
    for i in 0...length
      len = self[i].to_s.length
      length_hash[len].push(self[i])
    end
    length_hash
  end
  def odd_or_even(num)
    num.odd? ? "odd" : "even"
  end
  def group_into_hash
    group_hash = Hash.new
    hash_of_arrays = Hash.new {|hash, key| hash[key] = [] }
    group_hash = convert_to_hash.sort.inject(hash_of_arrays) do |new_hash, (key,value)|
      new_hash[odd_or_even(key)].push(value)
      new_hash
    end
    group_hash
  end
end