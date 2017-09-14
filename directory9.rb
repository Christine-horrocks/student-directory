
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students =[]
  name = gets.chomp

    while !name.empty? do
    students << {name: name, cohort: :November}
      if students.count == 1
        puts "Now we have #{students.count} student"
      else
        puts "Now we have #{students.count} students"
      end
    name = gets.chomp
    end

  students

end


def print_header
  puts "The students of the Villains Academey"
  puts "-------------"
end


def student_list(names)
    names.each.with_index(1) do |name, i|
    puts " #{i}. #{name[:name]} (#{name[:cohort]} cohort)"
  end
end

def print_footer(names)
  if names.count == 1
    puts "Overall, we have 1 great student!"
  else
    puts "Overall, we have #{names.count} great students"
  end
end

students = input_students
print_header
student_list(students)
print_footer(students)
