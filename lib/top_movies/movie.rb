require 'pry'

class TopMovies::Movie

  attr_accessor :title, :rating, :movie_url, :movie_poster, :movie_description, :genre, :director
  @@all = []
  
  def initialize(movie_hash)
    movie_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self 
  end 
  
  def self.all 
    self.scrape_movies
  end
  
   def self.scrape_movies 
    page = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
    movie_list = [] 
    
    # page.css(".card-ui").each do |movie| 
     #   title = getaway.css(".cui-udc-title-with-subtitle").text.gsub("\n", "").strip
      #  rating = getaway.css("ul.rating").first.attr("data-bhc").gsub("deal-review-rating:", "")
       # price = getaway.css(".cui-price-discount").text.gsub("From ", "").gsub("/nt", "")
        #getaway_url = getaway.css("a").attribute("href").value 
        
       # movie_info = {:title => title,
        #                :rating => rating,
         #               :price => price,
          #              :getaway_url => getaway_url} 
        #groupon_getaways << getaway_info 
      #end 
   # groupon_getaways 
  end 
  
  
end