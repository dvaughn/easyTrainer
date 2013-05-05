class TrainersController < ApplicationController
  def index
    @trainer = Trainer.new
    @athlete = Athlete.new
  end

  def register
    #Variable setting
    name = params[:trainer][:name]
    email = params[:trainer][:email]
    pw = params[:trainer][:password]
    pw_confirm = params[:trainer][:password_confirmation]

    #trainer instance we are trying to register
    @trainer = Trainer.new(:name => name, :email => email, :password => pw, :password_confirmation => pw_confirm)

    #Does the new user pass validations?
    if @trainer.valid?
      @trainer.save
      session[:trainer_id] = @trainer.id
      redirect_to :controller => :trainers, :action => :home
    else
      flash[:register_error] = @trainer.errors
      @trainer = Trainer.new
      render :index
    end
  end

  def login
    #Variable setting
    email = params[:trainer][:email]
    pw = params[:trainer][:password]

    #user instance we are trying to validate
    @trainer = Trainer.find_by_email(email)

    #Does the current user exist?
    if @trainer
      @current_trainer = @trainer.authenticate(pw)

      #Is the current user authenticated?
      if @current_trainer
        session[:trainer_id] = @trainer.id
        redirect_to :controller => :trainers, :action => :home
      else
        flash[:login_error] = "The password you specified was incorrect"
        @trainer = Trainer.new
        render :index
      end

    else
      flash[:login_error] = "The username you specified is already in use"
      @trainer = Trainer.new
      render :index
    end
  end

  def logout
    session[:trainer_id] = nil
    session[:athlete_id] = nil
    session[:workout_id] = nil
    @trainer = Trainer.new
    render :index
  end

  def home
    uid = session[:trainer_id]
    session[:athlete_id] = nil
    session[:workout_id] = nil
    @trainer = Trainer.find(uid)
    @athletes = @trainer.athletes
  end
end
