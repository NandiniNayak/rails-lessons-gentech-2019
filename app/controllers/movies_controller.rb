class MoviesController < ApplicationController
    def index
        # list all movies
        @movies = session[:movies]
    end

    def new
        # add a new movie
    end

    def create
        # session is a rails way of storing the data temporarily in a cookie
        if session[:movies] == nil
            session[:movies] = []
        end
        # puts params[:movie]
        session[:movies].push(params[:movie])
        puts "session movie data"
        puts session[:movies]

        # redirect to the show page and pass the last movie added as an id
        redirect_to movie_path(session[:movies].length - 1)
        # puts "create method ----"
        # puts params[:movie]
        # # add the newly added movie to the array
        # @movies = []
        # @movies.push(params[:movie])
        # puts @movies
        # # post a new movie
    end

    def show
        # fetch the movie from the params
        @movie = session[:movies][params[:id].to_i]
        puts "----movie in show---"
        puts @movie
        # show a single movie
    end

    def edit
        @movie = session[:movies][params[:id].to_i]
    end

    def update
        session[:movies][params[:id].to_i] = params[:movie]
        redirect_to movie_path(params[:id].to_i)
        # puts session[:movies]
    end
end