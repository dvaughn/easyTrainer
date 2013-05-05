class CreateTexercises < ActiveRecord::Migration
  def up
    create_table 'texercises' do |t|
      t.string 'name'
      t.string 'difficulty'
      t.references :bodypart
    end
  end

  def down
    drop_table 'texercises'
  end
end
