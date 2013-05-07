# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


######## SEEDED BODYPARTS #########

neck = Bodypart.create(:name => "Neck")
shoulder = Bodypart.create(:name => "Shoulder")
upper_back = Bodypart.create(:name => "Upper Back")
lower_back = Bodypart.create(:name => "Lower Back")
arm = Bodypart.create(:name => "Arm")
wrist = Bodypart.create(:name => "Wrist")
hand = Bodypart.create(:name => "Hand")
core = Bodypart.create(:name => "Core")
hip = Bodypart.create(:name => "Hip")
groin = Bodypart.create(:name => "Groin")
quad = Bodypart.create(:name => "Quad")
hamstring = Bodypart.create(:name => "Hamstring")
knee = Bodypart.create(:name => "Knee")
calf = Bodypart.create(:name => "Calf")
ankle = Bodypart.create(:name => "Ankle")
foot = Bodypart.create(:name => "Foot")

######## SEEDED EXERCISES #########

knee.texercises.create(:name => "One-Legged Squats", :difficulty => "Hard")
quad.texercises.create(:name => "One-Legged Squats", :difficulty => "Hard")

calf.texercises.create(:name => "Calf Raises", :difficulty => "Easy")

knee.texercises.create(:name => "Lunges", :difficulty => "Medium")
quad.texercises.create(:name => "Lunges", :difficulty => "Medium")
hamstring.texercises.create(:name => "Lunges", :difficulty => "Medium")

knee.texercises.create(:name => "Side Squats", :difficulty => "Medium")
quad.texercises.create(:name => "Side Squats", :difficulty => "Medium")

knee.texercises.create(:name => "Clean and Jerk", :difficulty => "Medium")
quad.texercises.create(:name => "Clean and Jerk", :difficulty => "Medium")

ankle.texercises.create(:name => "Clean and Jerk", :difficulty => "Medium")
foot.texercises.create(:name => "Clean and Jerk", :difficulty => "Medium")

knee.texercises.create(:name => "Quadricep Stretch", :difficulty => "Easy")
quad.texercises.create(:name => "Quadricep Stretch", :difficulty => "Easy")

knee.texercises.create(:name => "Wall slide", :difficulty => "Easy")
hamstring.texercises.create(:name => "Wall slide", :difficulty => "Easy")

knee.texercises.create(:name => "Hamstring Curls", :difficulty => "Easy")
hamstring.texercises.create(:name => "Hamstring Curls", :difficulty => "Easy")

quad.texercises.create(:name => "Box Squat", :difficulty => "Easy")

quad.texercises.create(:name => "Jump Squat", :difficulty => "Medium")
ankle.texercises.create(:name => "Jump Squat", :difficulty => "Medium")

shoulder.texercises.create(:name => "Pendulum", :difficulty => "Easy")

shoulder.texercises.create(:name => "Crossover Arm Stretch", :difficulty => "Easy")
arm.texercises.create(:name => "Crossover Arm Stretch", :difficulty => "Easy")

shoulder.texercises.create(:name => "Passive Internal Rotation", :difficulty => "Easy")

shoulder.texercises.create(:name => "Passive External Rotation", :difficulty => "Easy")

shoulder.texercises.create(:name => "Sleeper Stretch", :difficulty => "Easy")

shoulder.texercises.create(:name => "Standing Row", :difficulty => "Easy")

ankle.texercises.create(:name => "Dorsiflexion", :difficulty => "Easy")

ankle.texercises.create(:name => "Plantar Flexion", :difficulty => "Easy")

ankle.texercises.create(:name => "Scissor hops", :difficulty => "Easy")

ankle.texercises.create(:name => "One leg mini squats", :difficulty => "Easy")

ankle.texercises.create(:name => "Heel toe balance", :difficulty => "Easy")

calf.texercises.create(:name => "Donkey Calf Raise", :difficulty => "Easy")

calf.texercises.create(:name => "Seated Calf Extension", :difficulty => "Easy")

calf.texercises.create(:name => "45 degree Calf Press", :difficulty => "Easy")

calf.texercises.create(:name => "45 degree Calf Raises", :difficulty => "Easy")

calf.texercises.create(:name => "Jump Rope", :difficulty => "Easy")

calf.texercises.create(:name => "Single Leg Calf Raises", :difficulty => "Easy")

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
test_ex1 = workout.exercises.create(:name => 'Lunges', :'week1sets' => 3, :'week2sets' => 3, :'week3sets' => 3, :'week4sets' => 3,
 			:'week5sets' => 3, :'week1reps' => 10, :'week2reps' => 10, :'week3reps' => 10, :'week4reps' => 10, 
			:'week5reps' => 10, :'difficulty' =>'easy',:'bodypart' => 'Knee') 


########## KOBE's INJURY REPORT #############
ankle_overview = "Today Kobe bryant was shooting around when he rolled his ankle while trying to perform a triple lindy fadeaway dunk. His foot landed on the basketball goal at the wrong angle causing a grade 2 high ankle sprain. He will need to stay off of it for at least a week."
kobe.injuries.create(:name => "High Ankle Sprain", :day => 24, :month => 7, :year => 2012, :date => DateTime.new(2012, 7, 24), :overview => ankle_overview)

healthy_overview = "Kobe is back to his regular self, achieving success beyond success."
kobe.injuries.create(:name => "Healthy", :day => 13, :month => 12, :year => 2012, :date => DateTime.new(2012, 12, 13), :overview => healthy_overview)

concussion_overview = "Kobe not only went hard in the paint last night, but he also went hard into the bar.... with his head. Although there aren't typical workouts for concussions we want to trick Kobe into believing that it isn't his head that is hurt"
kobe.injuries.create(:name => "Concussion", :day => 13, :month => 12, :year => 2012, :date => DateTime.new(2012, 12, 13), :overview => concussion_overview)

kobe.injuries.create(:name => "Healthy", :day => 24, :month => 1, :year => 2013, :date => DateTime.new(2013, 1, 24), :overview => healthy_overview)

bicep_overview = "Kobe got a little cocky and forgot his age when trying to show Dwight Howard how to properly curl 100 lb. weights. He received a partial torn bicep and a possible sports hernia."
kobe.injuries.create(:name => "Torn Bicep", :day => 10, :month => 2, :year => 2013, :date => DateTime.new(2013, 2, 10), :overview => bicep_overview)

kobe.injuries.create(:name => "Healthy", :day => 23, :month => 3, :year => 2013, :date => DateTime.new(2013, 3, 23), :overview => healthy_overview)

achilles_overview = "During the Golden State warriors game on 4/12, Kobe sustained a 'pop' sound after cutting to the basket. Bryant asked Barnes if he had kicked him in the leg. When Barnes said he hadn't, Bryant said he knew that a major injury had occurred. An MRI revealed a torns achilles tendon"
kobe.injuries.create(:name => "Torn Achilles Tendon", :day => 12, :month => 4, :year => 2013, :date => DateTime.new(2013, 4, 12), :overview => achilles_overview)






















