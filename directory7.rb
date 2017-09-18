
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students =[]
  name = gets.chomp

    while !name.empty? do
    cohort = ""
    puts "Which cohort are they in?"
    cohort = gets.chomp
    cohort = "November" if cohort.empty?

    puts "Is this information correct: #{name}, #{cohort}? (Y/N)"
      check = gets.chomp
      if check.upcase == "Y"
    students << {name: name, cohort: cohort.to_sym}
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
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
student_list(students)
print_footer(students)
