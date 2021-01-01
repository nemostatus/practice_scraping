require 'httparty'
require 'nokogiri'
require 'byebug'
require 'json'
require 'pry'


def scrape_books_titles_and_ratings
 unparsed_data = HTTParty.get('https://books.toscrape.com/')
 parsed_page = Nokogiri::HTML(unparsed_data)
  #i want to get titles and ratings
#   title = parsed_page.css("a").first["title"]
#create variable and test what that dat is w/byebug by running ruby and file
testing = parsed_page.css('ol').css('.row').css('h3')
ratings = parsed_page.css('ol').css('.row').css('p').css('star-rating')
book_titles=[]
book_ratings =[]
#ratings
ratings.each do |rating|
try = ratings.text
book_ratings << try
end
testing.each do |title|
attempt = title.text
book_titles << attempt
end
#now get ratings 
byebug
end
scrape_books_titles_and_ratings #invoking method

