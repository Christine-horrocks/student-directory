
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

#and then print them
puts "The stduents of the Villains Academey"
puts "-------------"
students.each do |student|
  puts student
end

# finally, we print the total number of students
puts "Overall, we have #{student.count} great students"
