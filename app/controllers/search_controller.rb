class   SearchController < ApplicationController
    require 'nokogiri'
    require 'open-uri'
    
    def index
        @rails = Nokogiri::HTML(open("http://www.reddit.com/r/rails"))
    end
end
