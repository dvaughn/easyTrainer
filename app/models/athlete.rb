class Athlete < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :email, :sport, :height, :weight, :hometown, :status, :filepicker_url
  belongs_to :trainer
  has_one :workout
  has_many :notes
  has_many :injuries
end
