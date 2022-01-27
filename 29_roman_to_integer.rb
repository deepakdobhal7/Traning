def roman_to_integer(roman_no)
  roman_hash = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
  integer_no = 0
  for i in 0...roman_no.length
    if roman_no[i+1] != nil && (roman_hash[roman_no[i]]) < (roman_hash[roman_no[i+1]])
      integer_no -= roman_hash[roman_no[i]]
    else
      integer_no += roman_hash[roman_no[i]]
    end
  end

  return integer_no
end

print "Enter Roman No: "
roman_no = gets.chomp!
puts "Integer Number #{ roman_to_integer(roman_no) }"
