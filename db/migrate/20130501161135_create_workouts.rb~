class CreateWorkouts < ActiveRecord::Migration
  def up
    create_table 'workouts' do |t|
      t.string 'name'
      t.string 'ex1'
      t.string 'ex1reps'
      t.string 'ex2'
      t.string 'ex2reps'
      t.string 'ex3'
      t.string 'ex3reps'
      t.string 'ex4'
      t.string 'ex4reps'
      t.string 'ex5'
      t.string 'ex5reps'
      t.string 'ex6'
      t.string 'ex6reps'
      t.string 'ex7'
      t.string 'ex7reps'
      t.string 'ex8'
      t.string 'ex8reps'
      t.references :athlete
    end
  end

  def down
    drop_table 'workouts'
  end
end
