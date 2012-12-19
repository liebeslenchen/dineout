class Event < ActiveRecord::Base
  has_many :events
  attr_accessible :dtime, :diner_id
end
