class Array
  def convert_to_hash
    length_hash = Hash.new
    for i in 0...length
      if self[i].is_a? Integer
        len = self[i].to_s.length
      else
        len = self[i].length
      end
      length_hash[len] ||= []
      length_hash[len].push(self[i])
    end
    length_hash
  end
  def group_into_hash
    group_hash = Hash.new
    group_hash = convert_to_hash.sort.inject({}) do |new_hash, (key,value)|
      if key.odd?
        new_hash["odd"] ||= []
        new_hash["odd"].push(value)
      else
        new_hash["even"] ||= []
        new_hash["even"].push(value)
      end
      new_hash
    end
    group_hash
  end
end