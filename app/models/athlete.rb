class Athlete < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :email, :sport, :height, :weight, :hometown, :status, :pic, :temp_id
  has_attached_file :pic, :styles => { :medium => "195x173#{}", :thumb => "100x140>" }, :default_url => "/public/images/john.jpg"
  belongs_to :trainer
  has_one :workout
  has_many :notes
  has_many :injuries
end
