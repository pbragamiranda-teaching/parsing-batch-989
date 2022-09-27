require "csv"

# PARSING DATA
filepath = "data/beatles.csv"

CSV.foreach(filepath, headers: :first_row, col_sep: ";") do |row|
  puts "#{row["First Name"]} is  #{row["Instrument"]} player"
end


# STORING DATA
filepath = "data/students.csv"

CSV.open(filepath, "wb") do |csv|
  csv << ["Name", "Batch", "City"]
  csv << ["Kiki", "989", "Cape Town"]
  csv << ["Nico", "989", "Hamburg"]
  csv << ["Liam", "989", "Perth"]
end


# METHOD + HASH AS LAST ARGUMENT RECAP
# def hello(name, option = {})
#   if option[:upcased] == true
#     puts "Hello #{name}".upcase
#   else
#     puts "Hello #{name}"
#   end
# end

# hello("dom", {upcase: true})
