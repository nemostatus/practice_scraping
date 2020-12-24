require 'httparty'
require 'nokogiri'
require 'byebug'
require 'json'

def scrape_books 
    unparsed_data = HTTParty.get('books.toscrape.com')
end