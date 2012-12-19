class Event < ActiveRecord::Base
  attr_accessible :dtime, :diner_id
  has_many :diners
end
