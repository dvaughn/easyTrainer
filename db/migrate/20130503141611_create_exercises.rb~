class CreateExercises < ActiveRecord::Migration
  def up
    create_table 'exercises' do |t|
      t.string 'name'
      t.integer 'week1sets'
      t.integer 'week1reps'
      t.integer 'week2sets'
      t.integer 'week2reps'
      t.integer 'week3sets'
      t.integer 'week3reps'
      t.integer 'week4sets'
      t.integer 'week4reps'
      t.integer 'week5sets'
      t.integer 'week5reps'
      t.string 'difficulty'
      t.string 'bodyarea'

      t.references :workout
    end
  end

  def down
    drop_table 'exercises'
  end
end
