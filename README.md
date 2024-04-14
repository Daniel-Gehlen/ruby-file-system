# Ruby: FileSystem

## Ruby code using the Nokogiri gem to read the HTML file from the website example.com and print the content of the 'p' tags instead of the 'h1' tags:

### Code Explanation:

1. **Require the Nokogiri gem**:
   - `require 'nokogiri'`: This statement loads the Nokogiri gem, which is used to parse HTML documents.

2. **Read HTML Content**:
   - `html_content = open('https://example.com').read`: This line reads the HTML content from the website example.com using the `open()` function and stores it in the `html_content` variable.
     - The `open()` function opens a connection to the website and returns a file object.
     - The `read()` method of the file object is then used to read the contents of the file into the `html_content` variable.

3. **Parse HTML Content**:
   - `doc = Nokogiri::HTML(html_content)`: This statement parses the HTML content in the `html_content` variable and stores the parsed document in the `doc` variable.
     - The `Nokogiri::HTML()` function takes an HTML string as input and returns a Nokogiri::HTML::Document object.

4. **Get Paragraphs**:
   - `paragraphs = doc.search('p')`: This statement gets all the 'p' tags from the parsed document and stores them in the `paragraphs` variable.
     - The `search()` method of the Nokogiri::HTML::Document object takes a CSS selector as input and returns an array of Nokogiri::XML::Element objects that match the selector.

5. **Iterate Over Paragraphs**:
   - `paragraphs.each do |paragraph|`: This statement iterates over the `paragraphs` array and calls the block of code inside the loop for each paragraph. The `paragraph` variable inside the loop refers to the current paragraph object.

6. **Print Paragraph Content**:
   - `puts paragraph.text`: This statement prints the content of the current paragraph to the console.
     - The `text` method of the Nokogiri::XML::Element object returns the text content of the element.

### Observations:

- This code effectively demonstrates how to use Nokogiri to parse HTML content and extract specific elements.
- You can modify this code to suit your specific needs, such as extracting different types of elements or performing additional processing on the extracted content.
