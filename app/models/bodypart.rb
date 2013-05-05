class Bodypart < ActiveRecord::Base
  attr_accessible :name
  has_many :texercises
end
