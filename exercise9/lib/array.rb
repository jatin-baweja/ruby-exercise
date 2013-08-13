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
end