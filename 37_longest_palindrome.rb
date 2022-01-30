def length_of_longest_palindrome(s)
  palind_hash = {}
  len = 0
  s.each_char {|char| palind_hash.store(char, s.count(char))}
  puts palind_hash
  palind_hash.each_value do |value|
    if value % 2 == 0
      len +=value
    else
      if value == palind_hash.values.max
        len += value
      else
        len += value - 1
      end
    end
  end

  return len
end

print "Enter String: "
s = gets.chomp!
puts "#{length_of_longest_palindrome(s)}"
