class Texercise < ActiveRecord::Base
  attr_accessible :name, :difficulty, :bodypartname
  belongs_to :bodypart
end
