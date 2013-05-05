class ExercisesController < ApplicationController
  def index
  end

  def create
    uid = session[:trainer_id]
    aid = session[:athlete_id]
    wid = session[:workout_id]
    name = params[:exercise][:name]
    week1sets = params[:exercise][:week1sets]
    week1reps = params[:exercise][:week1reps]
    week2sets = params[:exercise][:week2sets]
    week2reps = params[:exercise][:week2reps]
    week3sets = params[:exercise][:week3sets]
    week3reps = params[:exercise][:week3reps]
    week4sets = params[:exercise][:week4sets]
    week4reps = params[:exercise][:week4reps]
    week5sets = params[:exercise][:week5sets]
    week5reps = params[:exercise][:week5reps]
    difficulty = params[:exercise][:difficulty]
    bodyarea = params[:exercise][:bodyarea]

    @exercise = Workout.find(wid).exercises.create(:name => name, :week1sets => week1sets, :week1reps => week1reps, :week2sets => week2sets, :week2reps => week2reps,
				:week3sets => week3sets, :week3reps => week3reps, :week4sets => week4sets, :week4reps => week4reps,
				:week5sets => week5sets, :week5reps => week5reps, :difficulty => difficulty, :bodyarea => bodyarea)

    respond_to do |format|
      format.html{
        redirect_to :controller => athletes, :action => home
      }
      format.json{
        render :json => @exercise
      }



    

  end

  def update
    uid = session[:trainer_id]
    aid = session[:athlete_id]
    wid = session[:workout_id]
    eid = params[:exercise][:id]
    name = params[:exercise][:name]
    week1sets = params[:exercise][:week1sets]
    week1reps = params[:exercise][:week1reps]
    week2sets = params[:exercise][:week2sets]
    week2reps = params[:exercise][:week2reps]
    week3sets = params[:exercise][:week3sets]
    week3reps = params[:exercise][:week3reps]
    week4sets = params[:exercise][:week4sets]
    week4reps = params[:exercise][:week4reps]
    week5sets = params[:exercise][:week5sets]
    week5reps = params[:exercise][:week5reps]
    difficulty = params[:exercise][:difficulty]
    bodyarea = params[:exercise][:bodyarea]
    @exercise = Exercise.find(eid).update_attributes(:name => name, :week1sets => week1sets, :week1reps => week1reps, :week2sets => week2sets, :week2reps => week2reps,
				:week3sets => week3sets, :week3reps => week3reps, :week4sets => week4sets, :week4reps => week4reps,
				:week5sets => week5sets, :week5reps => week5reps, :difficulty => difficulty, :bodyarea => bodyarea)

    respond_to do |format|
      format.html{
        redirect_to :controller => athletes, :action => home
      }
      format.json{
        render :json => @exercise
      }
  end

  def delete
    uid = session[:trainer_id]
    aid = session[:athlete_id]
    wid = session[:workout_id]
    eid = params[:exercise][:id]
    @exercise = Exercise.find(eid).destroy
    respond_to do |format|
      format.html{
        redirect_to :controller => athletes, :action => home
      }
      format.json{
        render :json => @exercise
      }
  end
end
