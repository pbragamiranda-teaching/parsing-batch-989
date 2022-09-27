require "json"

# PARSING
filepath = "data/beatles.json"

# reading the file
serialized_beatles = File.read(filepath)
# parsing the JSON into a Hash
beatles = JSON.parse(serialized_beatles)

p beatles["beatles"][0]["last_name"]

# STORING
filepath = "data/small-beatles.json"

beatles = { beatles: [
  {
    first_name: "Tracy",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Roux",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  }
]}

File.open(filepath, "wb") do |file|
  file.write(JSON.generate(beatles))
end
