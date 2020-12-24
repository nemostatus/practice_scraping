require 'httparty'
require 'nokogiri'
require 'byebug'
require 'json'
require 'pry'

def scrape_books 
 
    unparsed_data = HTTParty.get('https://books.toscrape.com/')

    parsed_page = Nokogiri::HTML(unparsed_data)
  
   puts "hi"
  byebug
end
scrape_books
