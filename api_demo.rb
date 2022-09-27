require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
puts "What is your github username"
username = gets.chomp

url = "https://api.github.com/users/#{username}"

user_serialized = URI.open(url).read

user_data = JSON.parse(user_serialized)

puts "#{user_data["name"]} has #{user_data["public_repos"]} public repos"
