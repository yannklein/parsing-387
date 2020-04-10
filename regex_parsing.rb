# ###################
# 💌 Challenge 1 💌
# ###################

# Build an e-mail checker program
# It will:
# - ask for an e-mail
# - tell if the e-mail is valid
# - stop if no input

def email_checker
  # Build email_checker!
end

# Uncomment line below to run!
email_checker



# ###################
# 👩‍🎓 Challenge 2 👨‍🎓
# ###################

# Read a CSV file and add the missing student

FILEPATH_READ = './pt_students_read.csv'
FILEPATH_WRITE = './pt_students_write.csv'

# read options
CSV_READ_OPTIONS = { col_sep: ',', headers: :first_row }
# write options
CSV_WRITE_OPTIONS = { col_sep: ',' }

require 'csv'

def read_write_csv
  # Build read_write_csv!
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
​
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
world_population
