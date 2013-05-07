class Note < ActiveRecord::Base
  attr_accessible :text, :created_at, :updated_at
  belongs_to :athlete
end
