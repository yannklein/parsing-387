# ###################
# 💌 Challenge 1 💌
# ###################


def email_checker(email)
  # Build email_checker!
  email =~ /[\w\.\-]+@\w+\.\w+/ ? true : false
end

def email_checker_challenge
  # Build an e-mail checker program
  # It will:
  # - ask for an e-mail
  puts "Please input your email:"
  user_email = gets.chomp

  # - stop if no input
  until user_email == ""
    puts "Check the input."
    # - tell if the e-mail is valid
    puts email_checker(user_email)
    puts "Please input your email:"
    user_email = gets.chomp
  end
end

# Uncomment line below to run!
email_checker_challenge

# ###################
# 🎓 Challenge 2 🎓
# ###################

# Read a CSV file and add the missing student

# require csv
require 'csv'

FILEPATH_READ = './pt_students_read.csv'
FILEPATH_WRITE = './pt_students_write.csv'

# define header options
# read options
CSV_READ_OPTIONS = { headers: :first_row, col_sep: ',' }
# write options
CSV_WRITE_OPTIONS = { col_sep: ',' }

def read_write_csv
  # create empty array
  student_names = []

  # read the CSV file
  puts "Reading '#{FILEPATH_READ.gsub('./','')}' file..."
  CSV.foreach(FILEPATH_READ, CSV_READ_OPTIONS) do |row|
    # p row[0]
    student_names << [row[0], row[1]]
  end

  # Add Davide to our array
  puts "Adding Davide..."
  student_names << ['Davide', 'Zanetto']

  # Store array into CSV
  puts "Writing '#{FILEPATH_WRITE.gsub('./','')}' file..."
  CSV.open(FILEPATH_WRITE, 'w', CSV_WRITE_OPTIONS) do |csv|
    csv << ["Firstname","Lastname"]
    student_names.each do |student_name|
      csv << student_name
    end
  end
  puts "Done!"
end

# Uncomment line below to run!
read_write_csv


# ###################
# 🌍 Challenge 3 🌍
# ###################

# Get the instant world net growth!
# 1. Scrape the world population from:
#    'https://www.livepopulation.com/'
# 2. Get the humanity growth during a time range defined
#    by your program user. Good luck!
POP_URL = 'https://www.livepopulation.com/'

def world_population
  puts 'Press ENTER to begin the count'
  gets.chomp
  print 'And...'
  start_pop = pop_counter
  puts ' counting!'
  puts ''
  puts 'Press ENTER to stop the count'
  gets.chomp
  end_pop = pop_counter
  puts "Humanity has #{(end_pop - start_pop).to_i} more humans!!"
end

def pop_counter
  # Build pop_counter!
end

# Uncomment line below to run!
# world_population
