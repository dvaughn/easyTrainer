# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

trainerman = Trainer.create(:name => "Trainerman", :email => "Trainerman@mit.edu", :password => "Trainerman", :password_confirmation => "Trainerman")
kobe = trainerman.athletes.create(:firstname => "Kobe", :lastname => "Bryant", :email => "kobebryant@mit.edu", :sport => "Basketball", :height => 78,
				 :weight => 205, :hometown => "Philadelphia", :status => "injured")
workout = kobe.create_workout(:name => "test")
ex1 = workout.exercises.create(:name => 'Lunges', :'week1sets' => 3, :'week2sets' => 3, :'week3sets' => 3, :'week4sets' => 3,
 			:'week5sets' => 3, :'week1reps' => 10, :'week2reps' => 10, :'week3reps' => 10, :'week4reps' => 10, 
			:'week5reps' => 10, :'difficulty' =>'easy',:'bodypart' => 'Knee') 

