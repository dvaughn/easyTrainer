class BodypartsController < ApplicationController
  def create
    name = params[:bodypart][:name]
    @bodypart = Bodypart.create(:name => name)
  end

  def delete
    id = params[:bodypart][:id]
    @bodypart = Bodypart.find(id)
    if @bodypart
      @bodypart.destroy
    else
    end
  end
end
