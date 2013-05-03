class TexercisesController < ApplicationController

  def create
    name = params[:texercise][:name]
    difficulty = params[:texercise][:difficulty]
    bodyarea = params[:texercise][:bodyarea]

    @texercise = Texercises.create(:name => name, :week1sets => 3, :week1reps => 10, :week2sets => 3, :week2reps => 10,
				:week3sets => 3, :week3reps => 10, :week4sets => 3, :week4reps => 10,
				:week5sets => 3, :week5reps => 10, :difficulty => difficulty, :bodyarea => bodyarea)
  end

end
