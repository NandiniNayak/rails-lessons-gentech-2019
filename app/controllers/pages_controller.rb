class PagesController < ApplicationController
    # filters execute a bunch of code before the intended method executes and after the intended method executes
    before_action :before_data
    after_action :after_data

    def home
        # @params_info = params[:profile]
    end

    def data
        # render "shared/nav"
        # params is a variable that stores the data coming from the routes, which could be used in our controller
        puts "params info-------"
        @params_info = params[:profile]
        puts "params info ------"
        # instead of sending a html file, lets send a plain text
        # render fetches the data in the form of a plain text, json or a html
        # render plain: "Working"
        # render html: "<h1> WORKING </h1>".html_safe

        # render can fetch content from another html page

        # render "pages/contact"
        # render "elephant/giraffe"
 

        # redirect_to redirects to another method/page
        redirect_to root_path

        # redirect_to "/pages/contact"
    end

    def before_data
        puts "method executed before the data method"
        @params_info = parms[:profile]
    end

    def after_data
        puts "method executed after the data method"
    end
end