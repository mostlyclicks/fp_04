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

  def edit
    @athlete = Athlete.find(params[:id])
  end

  def update
    @athlete = Athlete.find(params[:id])
    if @athlete.update_attributes(athlete_params)
      redirect_to :action => 'show', :id => @athlete
    else
      render :action => 'edit'
    end
  end

  private

    def athlete_params
      params.require(:athlete).permit(
        :name, :about, :video_embed, :image, :grad_date, :sport, :gpa_1, :gpa_2, :gpa_3, :gpa_4, :stat_title, :stat_data)
    end

end
