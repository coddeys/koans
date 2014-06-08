def score(dice)
  h = Hash.new(0)
  if dice == []
    0 
  else
    result = 0
    hash = dice.inject(Hash.new(0)) { |h,e| h[e] += 1; h }
    hash.select{ |k,v| v > 3}.each do |k,v|
      hash[k] = v - 3
    end
    # h = hash.select{ |k,v| v == 3 && k > 1}
    # result = h.each {|key, value| puts "#{key} is #{value}" }
    # result += hash.select{ |k,v| v == 3 && k = 1}.each_value{|v| return 1000}
    # result += hash.select{ |k,v| v < 3 && k == 1}.each_value{|v| return v*100}
    # result += hash.select{ |k,v| v < 3 && k == 5}.each_value{|v| return v*50}
    hash
  end
end
puts score([5,5,5,5,1])
puts score([5,5,1,1,2])
puts score([1,1,1,5])
