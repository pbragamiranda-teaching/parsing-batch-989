require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com
puts "What ingredient do you want to search?"
ingredient = gets.chomp

url = "https://www.bbcgoodfood.com/search?q=#{ingredient}"

# reading / opening the website
html_file = URI.open(url).read
# parsing into a Nokogiri object
html_doc = Nokogiri::HTML(html_file)

# searching and iterating
html_doc.search(".standard-card-new__article-title").each do |element|
  puts "https://www.bbcgoodfood.com#{element.attribute("href").value}"
  puts element.text.strip
end
