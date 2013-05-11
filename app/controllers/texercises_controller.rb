class TexercisesController < ApplicationController

  def create
    name = params[:texercise][:name]
    difficulty = params[:texercise][:difficulty]
    bodypartname = parmas[:texercise][:bodypartname]

    @texercise = Bodypart.find_by_name(bodypartname).texercises.create(:difficulty => difficulty, :bodyarea => bodyarea, :bodypartname => bodypartname)
  end

  def delete
    id = params[:texercise][:id]
    @texercise = Texercise.find(id)
    @texercise.destroy
  end
end
