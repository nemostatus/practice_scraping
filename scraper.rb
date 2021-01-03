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
ratings = parsed_page.css('p').css('.star-rating')
prices = parsed_page.css('p').css('.price_color')
heading = parsed_page.css('h1').text
nav = parsed_page.css('div').css('.side_categories').css('a')
book_ratings =[]
book_prices = []
book_titles=[]
navs= []
nav.each do |n|
  navs << n.text.strip
end
#gets titles text and pushes into array
testing.each do |title|
attempt = title.text
book_titles << attempt
end
#gets prices
prices.each do |price|
  book_prices << price.text
end
#now get ratings 
ratings.each do |rating|
  book_ratings << rating
end
combined = book_titles.zip(book_prices)
byebug

end
scrape_books_titles_and_ratings #invoking method

