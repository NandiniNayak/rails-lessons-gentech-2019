class PagesController < ApplicationController
    # filters execute a bunch of code before the intended method executes and after the intended method executes
    before_action :before_data
    after_action :after_data
    # before_action :consume_api

    def home
        # @params_info = params[:profile]
    end

    def data
        # render "shared/nav"
        # params is a variable that stores the data coming from the routes, which could be used in our controller
        puts "params info-------"
        # @params_info = params[:profile]
        puts "params info ------"
        # instead of sending a html file, lets send a plain text
        # render fetches the data in the form of a plain text, json or a html
        # render plain: "Working"
        # render html: "<h1> WORKING </h1>".html_safe

        # render can fetch content from another html page

        # render "pages/contact"
        # render "elephant/giraffe"
 

        # redirect_to redirects to another method/page
        # redirect_to root_path

        # redirect_to "/pages/contact"
        # call the consume api method
        consume_api
        # @profile = {name: :nands, age: 10, bio: :hello}
        render json: @data

    end

    def before_data
        puts "method executed before the data method"
        # @params_info = params[:profile]
    end

    def after_data
        puts "method executed after the data method"
    end

    def consume_api
        url = "https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22"
        response =  RestClient.get(url)
        @data = JSON.parse(response.body)["weather"]
        puts @data
    end
end