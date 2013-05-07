class CreateNotes < ActiveRecord::Migration
  def up
    create_table 'notes' do |t|
      t.text 'text'
      t.timestamps
      t.references :athlete
    end
  end

  def down
    drop_table 'notes'
  end
end
