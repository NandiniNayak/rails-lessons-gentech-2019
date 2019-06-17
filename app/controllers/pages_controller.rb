class PagesController < ApplicationController
    def home
        # server sends a response back to the client via render method
        # render html: "<h1> Home Page </h1>".html_safe
        # render "page/home"
     @user = "jo"
     @names = ["shun", "aidan", "derek"] 
    #   render "jo/page"
    end

    def contact
        @user = "Derek"
    end

    def books
        @user = " Dan Brown"
        @books = ["Lost Symbol", "Da vinci code", "Angels & Demons"]
    end
end