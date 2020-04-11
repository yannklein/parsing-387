# ###################
# 💌 Challenge 1 💌
# ###################

# Build an e-mail checker program
# It will:
# - ask for an e-mail
# - tell if the e-mail is valid
# - stop if no input

#Change the code!!!!

def email_checker
  puts 'Give an e-mail'
  input = gets.chomp

  until input == ''
    puts input.match?(/[^@]+@[^@]+\.[a-z]{2,3}/) ? "Good mail" : "Bad mail"
    puts 'Give an e-mail'
    input = gets.chomp
  end
end

# Uncomment line below to run!
email_checker

# ###################
# 🎓 Challenge 2 🎓
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
  students = []
  CSV.foreach(FILEPATH_READ, CSV_READ_OPTIONS) do |row|
    students << [row[0], row[1]]
  end
  # p students

  puts 'Adding Sam to the students...'
  CSV.open(FILEPATH_WRITE, 'w', CSV_WRITE_OPTIONS) do |csv|
    csv << ['Firstname', 'Lastname']
    students.each do |student|
      csv << student
    end
    csv << ['Sam', 'Moore']
  end
  puts 'Done!'
end

# Uncomment line below to run!
read_write_csv

# ###################
# 🌍 Challenge 3 🌍
# ###################

# Get the world population!
# 1. Scrape the world population from:
#    https://www.theworldcounts.com/counters/shocking_environmental_facts_and_statistics/world_population_clock_live
# 2. Get the amount of baby born during a time range defined
#    By your program user. Good luck!
require 'open-uri'
require 'nokogiri'

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
  puts "#{(end_pop[:birth] - start_pop[:birth]).to_i} babies were born and #{(end_pop[:death] - start_pop[:death]).to_i} people died during this time!"
end

def pop_counter
  url = 'https://www.livepopulation.com/'

  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)

  # Search for .maincounter-number
  scraped_data = []
  html_doc.search('.current-population').each do |element|
    scraped_data << element.text
  end
  increase = scraped_data[0].gsub(',', '').to_i
  ratio_death_birth = (105 / 250.0)
  death_value = increase * ratio_death_birth
  birth_value = increase + (increase * ratio_death_birth)
  { birth: birth_value, death: death_value }
end

# Uncomment line below to run!
world_population




