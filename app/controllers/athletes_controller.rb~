class AthletesController < ApplicationController
  def index
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
    firstname = params[:athlete][:firstname]
    lastname = params[:athlete][:lastname]
    email = params[:athlete][:email]
    sport = params[:athlete][:sport]
    height = params[:athlete][:height]
    weight = params[:athlete][:weight]
    hometown = params[:athlete][:hometown]
    status = params[:athlete][:status]

    @athlete = Trainer.find(uid).athletes.create(:firstname => firstname, :lastname => lastname, :email => email,
						:sport => sport, :height => height, :weight => weight, 
						:hometown => hometown, :status => status)
    @workout = Workout.create(:name => "main")
    @athlete.workout = @workout
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
    if session[:trainer_id]
      uid = session[:trainer_id]

      if params[:id]
        aid = params[:id]
      else
        aid = session[:athlete_id]
      end
      session[:athlete_id] = aid
      @trainer = Trainer.find(uid)
      @athlete = @trainer.athletes.find(aid)
    else
      aid = session[:athlete_id]
      @athlete = Athlete.find(aid)
    end
  end
end
