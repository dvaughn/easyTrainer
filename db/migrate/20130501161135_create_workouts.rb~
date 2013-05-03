class CreateWorkouts < ActiveRecord::Migration
  def up
    create_table 'workouts' do |t|
      t.string 'name'
      t.references :athlete
    end
  end

  def down
    drop_table 'workouts'
  end
end
