
qstudents = [
	{name:  "Terrence Coverly", cohort:  :november},
	{name:  "Allan Dicarra", cohort:  :november},
	{name:  "Oboe Today", cohort:  :november},
	{name:  "Billy Baldwin", cohort:  :november}
]
puts "These people have just joined MA"
sleep(1)
def print(qstudents)
qstudents.each_with_index do |qstudent, i |
	puts "#{i + 1}" "\ " "#{qstudent[:name]} (#{qstudent[:cohort]} cohort)"
	sleep(1)
	end
end
print(qstudents)
puts "There are #{qstudents.length} students"
sleep(2)

def print_header
  puts "What do you mean these people aren't at MA?"
  sleep(1)
  puts "Who is then?"
  sleep(1)
end

def print(students)
  students.each_with_index do |student, i|
    puts "#{i + 1}" "\ " "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

print_header

def print_footer(names)    
  puts "Now, there are #{names.length} students"
end

def input_students
	puts "Please enter the names of the current students"
	puts "To finish, just hit return twice"
	students = []
	name = gets.chomp.capitalize
	while !name.empty? do
		students << {name: name, cohort: :november}
		puts "Now we have #{students.length} students"
		name = gets.chomp.capitalize
	end
	students
end

students = input_students
print(students)
puts ''
sleep(1)
print_footer(students)
