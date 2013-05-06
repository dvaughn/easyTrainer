class Workout < ActiveRecord::Base
  attr_accessible :name
  belongs_to :athlete
  has_many :exercises
end
