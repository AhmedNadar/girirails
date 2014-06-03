class   SearchController < ApplicationController
    require 'nokogiri'
    require 'open-uri'
    
    def index
        @url = "http://www.reddit.com/r/rails"
        @rails = Nokogiri::HTML(open(@url))
     end
end
