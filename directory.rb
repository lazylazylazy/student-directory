students = [
	{:name => "terrence coverly", :cohort => :november},
	{:name => "allan dicarra", :cohort => :november},
	{:name => "oboe today", :cohort => :november},
	{:name => "billy baldwin", :cohort => :november}
]
def print(students)
students.capitalize.each do |student|
	puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end
print(students)
puts "total is #{students.length}, donezo"
