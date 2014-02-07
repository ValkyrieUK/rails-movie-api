module Api
  class MoviesController < ApplicationController
    respond_to :json

    # GET /movies
    # GET /movies.json
    def index
      @movies = Movie.all
      respond_with @movies
    end

    # GET /movies/1
    # GET /movies/1.json
    def show
      movie = Movie.search(params[:id])
      respond_with movies: movie
    end

    # DELETE /movies/1
    # DELETE /movies/1.json
    def destroy
      @movie.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_movie
        @movie = Movie.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def movie_params
        params.require(:movie).permit(:title, :desc, :year)
      end
  end
end