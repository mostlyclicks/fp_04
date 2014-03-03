class AthletesController < ApplicationController
  def index
    @athletes = ['Bill Smith', 'John Wall', 'Mike Moore']
  end

end
