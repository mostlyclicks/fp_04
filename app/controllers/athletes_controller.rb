class AthletesController < ApplicationController
  def index
    # @athletes = ['Bill Smith', 'John Wall', 'Mike Moore']
    @athletes = Athlete.all
  end

  def show
    @athlete = Athlete.find(params[:id])
  end

end
