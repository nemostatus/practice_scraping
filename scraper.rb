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
testing = parsed_page.css('a').text
  byebug
end
scrape_books
