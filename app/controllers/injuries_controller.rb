class InjuriesController < ApplicationController

  def new
    @injury = Injury.new
  end

  def create
    aid = session[:athlete_id]
    name = params[:injury][:name]
    day = params[:injury][:day].to_i
    month = params[:injury][:month].to_i
    year = params[:injury][:year].to_i
    overview = params[:injury][:overview]
    date = DateTime.civil(year, month, day)
    
		@athlete = Athlete.find(aid)
    @injury = @athlete.injuries.create(:name => name, :day => day, :month => month, :year => year, :date => date, :overview => overview)
    redirect_to :controller => :athletes, :action => :home
  end

  def update
  end

  def delete
    id = params[:injury][:id]
    @injury = Injury.find(id)
    @injury.destroy
  end
end
