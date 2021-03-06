class Event < ActiveRecord::Base
  attr_accessible :dtime, :diner_id, :user_id, :user_ids
  belongs_to :diner
  belongs_to :user
  
  has_many :participations
  has_many:users, through: :participations

  validates_presence_of :diner

end
