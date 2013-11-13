
qstudents = [
	{name:  "Terrence Coverly", cohort:  :November},
	{name:  "Alaine Dicarra", cohort:  :November},
	{name:  "Oboe Today", cohort:  :November},
	{name:  "Billy Baldwin", cohort:  :November}
]
puts "These people have just joined MA"
sleep(0.2)
def print(qstudents)
qstudents.each_with_index do |qstudent, i |
	puts "#{i + 1}\ "  "#{qstudent[:name]} (#{qstudent[:cohort]} Cohort)"
	sleep(0.2)
	end
end
print(qstudents)
puts "There are #{qstudents.length} students"
sleep(0.3)

def print_header
  puts "What do you mean these people aren't at MA?"
  sleep(0.2)
  puts "Who is then?"
  sleep(0.2)
end

def print(students)
  students.each_with_index do |student, i|
    puts "#{i + 1}\ "  "#{student[:name]} (#{student[:cohort]} Cohort)"
  end
end

print_header

def print_footer(names)
	if names.length == 1
		puts "There is 1 student"
	elsif names.length == 0
		puts "Oh dear, there are no students"
	else   
	  puts "Now, there are #{names.length} students"
	end
end	

def print_sorted(names)	
	puts "These names include the letter A:"
	names.select {|name| name.include?("A") }.each do |name|
		puts name
	end
end

def input_students
	puts "Please enter the names of the current students"
	sleep(0.5)
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
sleep(1)
print_sorted(names)
print_footer(students)