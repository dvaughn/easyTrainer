EasyTrainer::Application.routes.draw do


  match "/" => "trainers#index"
  match ":controller/:action"

end
