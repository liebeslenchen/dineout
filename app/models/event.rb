class Event < ActiveRecord::Base
  attr_accessible :dtime, :diner_id
  belongs_to :diner
end
