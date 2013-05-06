EasyTrainer::Application.routes.draw do

  match "exercises/create" => "exercises#create_preflight", :constraints => { :method => "OPTIONS" }
  match "exercises/update" => "exercises#update_preflight", :constraints => { :method => "OPTIONS" }
  match "exercises/delete" => "exercises#delete_preflight", :constraints => { :method => "OPTIONS" }

  match "/" => "trainers#index"
  match ":controller/:action"

end
