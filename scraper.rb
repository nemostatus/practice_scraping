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
  byebug
end
scrape_books
