class CreateAthletes < ActiveRecord::Migration
  def up
    create_table 'athletes' do |t|
      t.string 'firstname'
      t.string 'lastname'
      t.string 'email'
      t.string 'sport'
      t.integer 'height'
      t.integer 'weight'
      t.string 'hometown'
      t.string 'status'
      t.integer 'temp_id'
      t.references :trainer
    end
  end

  def down
    drop_table 'athletes'
  end
end
