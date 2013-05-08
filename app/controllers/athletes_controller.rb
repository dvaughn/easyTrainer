class AthletesController < ApplicationController
  def new
    @athlete = Athlete.new
    @atheletes = Athlete.new
  end

  def login
    email = params[:athlete][:email]
    @athlete = Athlete.find_by_email(email)
    if @athlete
      session[:athlete_id] = @athlete.id
      session[:trainer_id] = nil
      redirect_to :controller => :athletes, :action => :home
    else
      redirect_to :controller => :trainers, :action => :index
    end
  end

  def create
    #Variable setting
    uid = session[:trainer_id]

    @athlete = Trainer.find(uid).athletes.create( params[:athlete] )
    @workout = Workout.create(:name => "main")
    @athlete.workout = @workout
    @athlete.injuries.create(:name => "Healthy", :day => 1, :month => 1, :year => 2013, :date => DateTime.current, :overview => "Athlete is initially healthy")
    session[:athlete_id] = @athlete.id
    redirect_to :controller => :athletes, :action => :home
  end

  def update
  end

  def delete
    #Variable setting
    uid = session[:trainer_id]
    aid = session[:athlete_id]

    @trainer = Trainer.find(uid)
    @athlete = @trainer.athletes.find(aid)
    @athlete.destroy
    redirect_to :controller => :trainers, :action => :home
  end

  def home
		uid = session[:trainer_id]

		if params[:id]
			aid = params[:id]
		else
			aid = session[:athlete_id]
		end
		session[:athlete_id] = aid
		@trainer = Trainer.find(uid)
		@athlete = @trainer.athletes.find(aid)

    @bodyparts = Bodypart.all
    @notes = @athlete.notes
    @injuries = @athlete.injuries
    @current_injury = @injuries.last
    @workouts = Workout.all 
  end

  def athlete_home
    aid = session[:athlete_id]
    @athlete = Athlete.find(aid)
    @bodyparts = Bodypart.all
    @notes = @athlete.notes
    @injuries = @athlete.injuries
    @current_injury = @injuries.last
  end
end
