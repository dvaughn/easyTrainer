class AddFilepickerUrlToAthletes < ActiveRecord::Migration
  def up
    add_column :athletes, :filepicker_url, :string
  end

  def down
    remove_column :athletes, :filepicker_url
  end
end
