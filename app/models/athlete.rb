class Athlete < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :email, :sport, :height, :weight, :hometown, :status
  belongs_to :trainer
  has_many :workouts
end
