class CreateInjuries < ActiveRecord::Migration
  def up
    create_table 'injuries' do |t|
      t.string 'name'
      t.integer 'day'
      t.integer 'month'
      t.integer 'year'
      t.datetime 'date'
      t.text 'overview'
      t.references :athlete
    end
  end

  def down
    drop_table 'injuries'
  end
end
