# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


######## SEEDED TRAINER1 -- Login => Trainerman@mit.edu : Trainerman ######## 
trainerman = Trainer.create(:name => "Trainerman", :email => "Trainerman@mit.edu", :password => "Trainerman", :password_confirmation => "Trainerman")

######## SEEDED TRAINER1's ATHLETES #########
kobe = trainerman.athletes.create(:firstname => "Kobe", :lastname => "Bryant", :email => "kobebryant@mit.edu", :sport => "Basketball", :height => 78,
				 :weight => 205, :hometown => "Philadelphia, PA", :status => "injured")
john = trainerman.athletes.create(:firstname => "John", :lastname => "Wenzel", :email => "jwenzel@mit.edu", :sport => "Football", :height => 74,
				 :weight => 215, :hometown => "Mandeville, LA", :status => "healthy")
derek = trainerman.athletes.create(:firstname => "Derek", :lastname => "Jeter", :email => "djeter@mit.edu", :sport => "Baseball", :height => 70,
				 :weight => 205, :hometown => "Whocaresville, NY", :status => "injured")
dale = trainerman.athletes.create(:firstname => "Dale", :lastname => "Earnhardt", :email => "earnhardt@mit.edu", :sport => "Nascar", :height => 76,
				 :weight => 205, :hometown => "Kannapolis, NC", :status => "injured")
ron = trainerman.athletes.create(:firstname => "Ron", :lastname => "Burgundy", :email => "burgundy@mit.edu", :sport => "Anchoring", :height => 78,
				 :weight => 205, :hometown => "San Diego, CA", :status => "healthy")
brock = trainerman.athletes.create(:firstname => "Brock", :lastname => "Lesnar", :email => "lesnar@mit.edu", :sport => "Wrestling", :height => 75,
				 :weight => 285, :hometown => "Webster, SD", :status => "injured")

workout = kobe.create_workout(:name => "test")
ex1 = workout.exercises.create(:name => 'Lunges', :'week1sets' => 3, :'week2sets' => 3, :'week3sets' => 3, :'week4sets' => 3,
 			:'week5sets' => 3, :'week1reps' => 10, :'week2reps' => 10, :'week3reps' => 10, :'week4reps' => 10, 
			:'week5reps' => 10, :'difficulty' =>'easy',:'bodypart' => 'Knee') 

