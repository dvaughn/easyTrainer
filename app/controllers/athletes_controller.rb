class AthletesController < ApplicationController
  def index
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
    #Variable setting
    uid = session[:trainer_id]

    #if the params include a site then we get the site id from here
    # else the site id is already stored in the session
    if params[:athlete]
      aid = params[:athlete][:athlete_id]
    else
      aid = session[:athlete_id]
    end

    session[:athlete_id] = aid

    @trainer = Trainer.find(uid)
    @athlete = @trainer.athletes.find(aid)
  end
end
