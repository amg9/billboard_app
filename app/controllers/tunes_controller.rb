class TunesController < ApplicationController
  before_action :set_artist
  before_action :set_tune, only: [:show, :edit, :update, :destroy]
  def index
    @tunes = @artist.tunes
  end

  def show
  end

  def new
    @tune = @artist.tunes.new
  end

  def create
    @tune = @artist.tunes.new(tune_params)

    if @tune.save
      redirect_to artist_tunes_path(@artist)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tune.update(tune_params)
      redirect_to artist_tune_path(@artist, @tune)
    else
      render :edt
    end
  end

  def destroy
    @tune.destroy
    redirect_to artist_tunes_path(@artist)
  end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def set_tune
      @tune = Tune.find(params[:id])
    end

    def tune_params
      params.require(:tune).permit(:title, :album, :release_date, :lyrics)
    end
end
