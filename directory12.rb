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
    if names.count >=1
      names.each do |name|
        puts " #{name[:name]} (#{name[:cohort]} cohort)"
      end
    else
      puts ""
    end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
student_list(students)
print_footer(students)
