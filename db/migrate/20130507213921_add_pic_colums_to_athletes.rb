class AddPicColumsToAthletes < ActiveRecord::Migration
  def self.up
    add_attachment :athletes, :pic
  end

  def self.down
    remove_attachment :athletes, :pic
  end
end
