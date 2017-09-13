
#Adding an array containg the students
#students = [
          #  {name: "Dr. Hannibal Lecter", cohort: :November},
          #  {name: "Darth Vader", cohort: :November},
          #  {name: "Nurse Ratched", cohort: :November},
          #  {name: "Micheal Corleone", cohort: :November},
          #  {name: "Alex DeLarge", cohort: :November},
          #  {name: "The Wicked Witch of the West", cohort: :November},
          #  {name: "Terminator", cohort: :November},
          #  {name: "Freddy Krueger", cohort: :November},
          #  {name: "The Joker", cohort: :November},
          #  {name: "Joffrey Baratheon", cohort: :November},
          #  {name: "Norman Bates", cohort: :November}
#]

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students =[]
  name = gets.chomp

    while !name.empty? do
    students << {name: name, cohort: :November}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    end
    
    students
end

def print_header
  puts "The students of the Villains Academey"
  puts "-------------"
end

def student_list(names)
  names.each do |name|
    puts "#{name[:name]} (#{name[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
student_list(students)
print_footer(students)
