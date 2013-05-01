EasyTrainer::Application.routes.draw do
  get "workouts/index"

  get "workouts/create"

  get "workouts/update"

  get "workouts/delete"

  get "athletes/index"

  get "athletes/create"

  get "athletes/update"

  get "athletes/delete"

  get "trainers/splash"

  get "trainers/index"

  get "trainers/home"

  match "/" => "trainers#splash"
  match ":controller/:action"

end
