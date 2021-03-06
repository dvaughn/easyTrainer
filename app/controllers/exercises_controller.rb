class ExercisesController < ApplicationController
  def index
  end

  def create
    set_cors_headers
    uid = session[:trainer_id]
    aid = session[:athlete_id]
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
    bodypart = params[:exercise][:bodypart]

    @exercise = Athlete.find(aid).workout.exercises.create(:name => name, :week1sets => week1sets, :week1reps => week1reps, :week2sets => week2sets, :week2reps => week2reps,
				:week3sets => week3sets, :week3reps => week3reps, :week4sets => week4sets, :week4reps => week4reps,
				:week5sets => week5sets, :week5reps => week5reps, :difficulty => difficulty, :bodypart => bodypart)

    respond_to do |format|
      format.html{
        redirect_to :controller => :athletes, :action => :home
      }
      format.json{
        render :json => @exercise
      }
    end
  end

  def update
    set_cors_headers
    uid = session[:trainer_id]
    aid = session[:athlete_id]
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
    bodypart = params[:exercise][:bodypart]
    @exercise = Exercise.find(eid).update_attributes(:name => name, :week1sets => week1sets, :week1reps => week1reps, :week2sets => week2sets, :week2reps => week2reps,
				:week3sets => week3sets, :week3reps => week3reps, :week4sets => week4sets, :week4reps => week4reps,
				:week5sets => week5sets, :week5reps => week5reps, :difficulty => difficulty, :bodypart => bodypart)

    respond_to do |format|
      format.html{
        redirect_to :controller => :athletes, :action => :home
      }
      format.json{
        render :json => @exercise
      }
    end
  end

  def delete
    set_cors_headers
    uid = session[:trainer_id]
    aid = session[:athlete_id]
    eid = params[:exercise][:id]
    @exercise = Exercise.find(eid).destroy
    respond_to do |format|
      format.html{
        redirect_to :controller => :athletes, :action => :home
      }
      format.json{
        render :json => @exercise
      }
    end
  end

  def set_cors_headers
    headers["Access-Control-Allow-Origin"] = "*"
    headers["Access-Control-Allow-Methods"] = "POST, GET, OPTIONS"
    headers["Access-Control-Allow-Headers"] = "Content-Type, Origin, Referer, User-Agent"
    headers["Access-Control-Max-Age"] = "3600"
  end

  def create_preflight
    set_cors_headers
    render :text => "", :content_type => "text/plain"
  end

  def delete_preflight
    set_cors_headers
    render :text => "", :content_type => "text/plain"
  end

  def update_preflight
    set_cors_headers
    render :text => "", :content_type => "text/plain"
  end
end
