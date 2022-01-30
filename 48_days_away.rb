require 'date'
def days_away(date1)
  date2 = '01/01/2022'
  date1 = Date.strptime(date1, '%m/%d/%Y')
  date2 = Date.strptime(date2, '%m/%d/%Y')
  nos_of_days = (date2 - date1).to_i

  return nos_of_days
end

print "Enter Date in format mm/dd/yyyy: "
date1 = gets.chomp!
puts "nos of days away from 2023: #{days_away(date1)} days"



