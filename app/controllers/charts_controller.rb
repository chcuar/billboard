class ChartsController < ApplicationController
  
  
    def index
      @charts = @song.charts
    end
  
    def new
      @chart = @song.charts.new
    end
  
    def create
      @chart = @song.charts.new(chart_params)
      if @chart.save
        redirect_to artist_song_path(@song, @chart)
      else
        render :new
      end
  
    end
  
  def edit

  end
  
    def destroy
      @chart = @song.charts.find(params[:id])
      @chart.destroy
      redirect_to artist_song_path(@song)
    end
  
   
  
    private
    def chart_params
      params.require(:chart).permit(:name, :song_id)
    end
  
end
