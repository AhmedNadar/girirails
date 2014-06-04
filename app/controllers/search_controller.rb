class   SearchController < ApplicationController
    def index
        @link = RedditScraper.new.search
    end

end
