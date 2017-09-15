
def interactive_menu
  @students = []
  loop do
    #1
    print_menu
    #2+3
    process(gets.chomp)
  end
end


def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end


def process(selection)
  case selection
  when "1"
    students = input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts " I am not sure what you meant, try again"
  end
end


def show_students
  print_header
  student_list
  print_footer
end


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp

      while !name.empty? do
        @students << {name: name, cohort: :November}
        puts "Now we have #{@students.count} students"
        name = gets.chomp
        end
end


def print_header
  puts "The students of the Villains Academey"
  puts "-------------"
end


def student_list
    @students.each.with_index(1) do |name, i|
    puts " #{i}. #{name[:name]} (#{name[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end
interactive_menu
