EasyTrainer::Application.routes.draw do

  match "/restricted/resource" => "home#resource_preflight", :constraints => { :method => "OPTIONS" }
  match "/restricted/resource" => "home#resource"

  match "/" => "trainers#index"
  match ":controller/:action"

end
