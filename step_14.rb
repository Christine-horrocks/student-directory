@students = []

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end


def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end


def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      select_load_students
    when "9"
      exit
    else
      puts " I am not sure what you meant, try again"
    end
end


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  @name = STDIN.gets.chomp

    while !@name.empty? do
      push_students
      puts "Now we have #{@students.count} students"
      @name = STDIN.gets.chomp
    end
end


def push_students
    @students << {name: @name, cohort: :November}
end


def show_students
  print_header
  student_list
  print_footer
end


def student_list
  @students.each.with_index(1) do |name, i|
  puts " #{i}. #{name[:name]} (#{name[:cohort]} cohort)"
  end
end


def print_header
  puts "The students of the Villains Academey"
  puts "-------------"
end


def print_footer
  puts "Overall, we have #{@students.count} great students"
end


def save_students
  puts "Which file would you like to save this information to? "
  file_name = STDIN.gets.chomp
  file = File.open(file_name, "w") do |file|
  @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv_line = student_data.join(",")
      file.puts csv_line
    end
  end
    puts "All student information has been saved"
end


def load_students(filename = "students.csv")
  file = File.open(filename, "r") do |file|
  file.readlines.each do |line|
    @name, cohort = line.chomp.split(',')
    push_students
    end
  end
  puts "Success, #{filename} has been loaded"
end

def select_load_students
  puts "Which file would you like to load that information from? "
  file_name = STDIN.gets.chomp
  load_students(file_name)
end


def try_load_students
filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

try_load_students
interactive_menu
