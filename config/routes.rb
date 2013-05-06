EasyTrainer::Application.routes.draw do


  get "injuries/create"

  get "injuries/update"

  get "injuries/delete"

  match "/" => "trainers#index"
  match ":controller/:action"

end
