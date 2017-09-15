

def interactive_menu
  students = []
  loop do
    #1
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    #2
    selection = gets.chomp
    #3
    case selection
    when "1"

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

      students = input_students
    when "2"

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

      print_header
      student_list(students)
      print_footer(students)
    when "9"
      exit
    else
      puts " I am not sure what you meant, try again"
    end
  end
end

interactive_menu 
