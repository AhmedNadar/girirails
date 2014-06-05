require 'nokogiri'
require 'open-uri'

class RedditScraper

  def initialize
    @headline = []
  end

  def search
    doc = Nokogiri::HTML(open("http://www.reddit.com/r/rails/"))
    doc.css('a.title').each do |link|
      if link['href'].include?('http')
        @headline << { content: link.content, href: link['href'] } 
        # @headline << { content: link.content, href: link['href'], link.add_class('glyphicon glyphicon-globe') } 
      else
        @headline << { content: link.content, href: "http://reddit.com" + link['href'] }
      end6
    end
    @headline
  end

end
