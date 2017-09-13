
#Adding an array containg the students
students = [
            "Dr. Hannibal Lecter",
            "Darth Vader",
            "Nurse Ratched",
            "Micheal Corleone",
            "Alex DeLarge",
            "The Wicked Witch of the West",
            "Terminator",
            "Freddy Krueger",
            "The Joker",
            "Joffrey Baratheon",
            "Norman Bates"
]

def print_header
  puts "The students of the Villains Academey"
  puts "-------------"
end

def student_list(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header
student_list(students)
print_footer(students)
