class Athlete < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :email, :sport, :height, :weight, :hometown, :status, :pic
  has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/public/images/john.jpg"
  belongs_to :trainer
  has_one :workout
  has_many :notes
  has_many :injuries
end
