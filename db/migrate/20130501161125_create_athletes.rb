class CreateAthletes < ActiveRecord::Migration
  def up
    create_table 'athletes' do |t|
      t.string 'name'
      t.string 'email'
      t.string 'sport'
      t.integer 'height'
      t.integer 'weight'
      t.string 'hometown'
      t.string 'status'
      t.references :trainer
    end
  end

  def down
    drop_table 'athletes'
  end
end
