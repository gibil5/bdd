

#jr@oblique : 17 aug 2014


# Goal: 	Learn to use the most outstanding features of Ruby



# Predicate methods 

def do_something_with(arr)
	puts "do something"
	puts arr.length
	puts
end

arr = [1, 2]
arr = []

do_something_with(arr) unless arr.empty?

#puts arr




# Everything is evaluated as true
puts "Test 2: Everything is evaluated as true"
puts "0 evaluates to true" if 0 
puts


# Selecting items from an array
puts "Test 3: Selecting items from an array"
arr = [1, 2, 3, 4, 5, 6, 7]

# Non destructive
sub = arr.select { |a| a > 3 }
puts "arr"
puts arr
puts "sub"
puts sub 
puts
#sub = arr.reject { |a| a > 3 }
#puts arr
#puts sub 
#puts 

# Destructive
#arr.select! { |a| a > 3 }
#puts "arr"
#puts arr
#puts "sub"
#puts sub 
#puts

puts "sub.length"
puts sub.length



