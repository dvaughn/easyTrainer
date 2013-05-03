class CreateTrainers < ActiveRecord::Migration
  def up
    create_table 'trainers' do |t|
      t.string 'name'
      t.string 'email'
      t.string 'password_digest'
    end
  end

  def down
    drop_table 'trainers'
  end
end
