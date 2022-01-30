def after_n_days(arr_of_days, n)
  arr = []
  days_in_week = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
  arr_of_days.each do |day|
    index = days_in_week.index(day)
    index += n
    while true
      if index < 7
        arr.push(days_in_week[index])
       	break
      else
	index -= 7
	next
      end  	
    end
  end

  return arr
end

arr_of_days = ["Thursday", "Monday"]
print "Enter no of days to increment : "
n = Integer(gets)
puts "Days after n number of days passed #{ after_n_days(arr_of_days, n) }"