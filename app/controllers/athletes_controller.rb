class AthletesController < ApplicationController
  def index
    # @athletes = ['Bill Smith', 'John Wall', 'Mike Moore']
    @athletes = Athlete.all
  end

  def show
    @athlete = Athlete.find(params[:id])
  end

  def new
    @athlete = Athlete.new
  end

  def create
    @athlete = Athlete.new(athlete_params)
    if @athlete.save
      redirect_to @athlete
    else
      render "new"
    end
  end

  private

    def athlete_params
      params.require(:athlete).permit(:name, :about, :video_embed, :image)
    end

end
