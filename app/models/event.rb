class Event < ActiveRecord::Base
  attr_accessible :dtime, :diner_id
  belongs_to :diner
  belongs_to :user

  validates_presence_of :diner

end
