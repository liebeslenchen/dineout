class Event < ActiveRecord::Base
  attr_accessible :dtime, :diner_id
  belongs_to :diner

  validates_presence_of :diner

end
