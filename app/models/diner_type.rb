class DinerType < ActiveRecord::Base
  attr_accessible :name 

  has_many :diners
end
