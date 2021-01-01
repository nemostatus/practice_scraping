require 'httparty'
require 'nokogiri'
require 'byebug'
require 'json'
require 'pry'

def scrape_books 
 unparsed_data = HTTParty.get('https://books.toscrape.com/')
 parsed_page = Nokogiri::HTML(unparsed_data)
  #i want to get titles and ratings
#   title = parsed_page.css("a").first["title"]
#create variable and test what that dat is w/byebug by running ruby and file
testing = parsed_page.css('ol').css('.row').css('h3')
book_titles = []
testing.each do |title|
attempt = title.text
book_titles << attempt
end
puts book_titles
end
scrape_books
