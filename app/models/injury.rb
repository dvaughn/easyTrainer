class Injury < ActiveRecord::Base
  attr_accessible :name, :date, :day, :month, :year, :overview
  belongs_to :athlete
end
