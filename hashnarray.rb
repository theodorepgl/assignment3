#16. Given a hash student_scores with student names as keys and their corresponding test scores as values, write code to find the student with the highest score.

student_scores = {"Theodore" => 82, "Ronaldo" => 88, "Messi" => 88, "Maradona" => 95}

def highest_score(student_scores)
	highest_score = student_scores.values.max
	highest_scorers = Hash[student_scores.select {|key,value| value == highest_score}]
	puts highest_scorers
	puts highest_score
end

highest_score(student_scores)
puts

#17. Given a hash fruit_prices with fruit names as keys and their prices as values, write code to print the names of fruits that are priced less than $1.'

fruit_prices = {"Banana" => 8.88, "Grapes" => 0.99, "Tarap" => 18.50, "Durian" => 48}

def less_than(fruit_prices,price)
	new_hash = Hash[fruit_prices.select {|key,value| value < price}]
	puts new_hash
end

less_than(fruit_prices,1)
puts

#18. Create an array of strings representing names. Write code to filter and print the names that start with the letter "A".

names = ["Sandra","Amanda","Alison","Baby","Lilo","Ashley"]

a_names = names.select {|name| name.start_with?('A')}
puts a_names
puts

#19. Create an array of strings representing words. Write code to join the words in the array into a single sentence.

words = ["I", "want", "to", "be", "a", "software", "engineer"]
sentence = words.join(" ")
puts sentence