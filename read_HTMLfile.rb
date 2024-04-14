require 'nokogiri'

# Read the HTML file from the website
html_content = open('https://example.com').read

# Parse the HTML content
doc = Nokogiri::HTML(html_content)

# Get all 'p' tags
paragraphs = doc.search('p')

# Print the content of each 'p' tag
paragraphs.each do |paragraph|
  puts paragraph.text
end
