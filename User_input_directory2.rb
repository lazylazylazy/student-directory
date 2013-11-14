qstudents = [
	{name:  "Terrence Coverly", cohort:  :November, likes: 'dogs'},
	{name:  "Alaine Dicarra", cohort:  :November, likes: 'Alaine'},
	{name:  "Oboe Today", cohort:  :November, likes: "ice cream"},
	{name:  "Billy Baldwin", cohort:  :November, likes: "everyone"}
]
puts "These people have just joined MA"
sleep(0.1)
def print(qstudents)
qstudents.each_with_index do |qstudent, i |
	puts "#{i + 1}\ "  "#{qstudent[:name]} (#{qstudent[:cohort]} Cohort) (#{qstudent[:likes]}"
	sleep(0.1)
	end
end
print(qstudents)
puts "There are #{qstudents.length} students"
sleep(0.2)

def print_header
  puts "What do you mean these people aren't at MA?"
  sleep(0.1)
  puts "Who is then?"
  sleep(0.1)
end

def print(students)
  students.each_with_index do |student, i|
    puts_centered "#{i + 1}\ "  "#{student[:name]} (#{student[:cohort]} Cohort)"
  end
end

print_header

def print_footer(names)
	if names.length == 1
		puts_centered "There is 1 student"
	elsif names.length == 0
		puts_centered "Oh dear, there are no students"
	else   
	  puts_centered "Now, there are #{names.length} students"
	end
end	

def puts_centered(string)
	puts string.center(150)
end

def print_sorted(names)	
	names.select {|name| names.include?("A") }.each do |name|
		if name == true
		puts_centered "These names include the letter A:"	
		puts_centered name
		end
	end
end

def print_scaled(names)
	names.select {|name| names.length}.each do |name|
		if name.length < 12
			puts_centered "These are some short names"
			puts name
		else 
			puts_centered "They all have long names"
	end
end	
end

def input_students
	puts "Please enter the names of the current students"
	sleep(0.1)
	puts "To finish, just hit return twice"
	students = []
	name = gets.chomp.split(' ').map(&:capitalize).join(' ')
	while !name.empty? do
		students << {name: name, cohort: :November}
		puts "Now we have #{students.length} students"
		name = gets.chomp.split(' ').map(&:capitalize).join(' ')
	end
	students
end

students = input_students
print(students)
puts ''
sleep(0.1)
print_sorted(students)
print_scaled(students)
print_footer(students)