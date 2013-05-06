class InjuriesController < ApplicationController
  def create
    name = params[:injury][:name]
    day = params[:injury][:day]
    month = params[:injury][:month]
    year = params[:injury][:year]
    overview = params [:injury][:overview]
    
    @injury = Injury.create(:name => name, :day => day, :month => month, :year => year, :date => DateTime.new(year, month, day), :overview => overview)
  end

  def update
  end

  def delete
    id = params[:injury][:id]
    @injury = Injury.find(id)
    @injury.destroy
  end
end
