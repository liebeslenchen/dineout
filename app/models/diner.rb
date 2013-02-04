class Diner < ActiveRecord::Base
  attr_accessible :city, :name, :number, :phone, :street, :time, :url, :urlmaps, :zipcode, :diner_type_id, :mealtype_ids, :diner_type, :mealtypes 

  has_many :events
  has_and_belongs_to_many :mealtypes
  belongs_to :diner_type

  validates_presence_of :name, :city, :number, :street, :zipcode
  validates :urlmaps, format: %r|^http(s?)://maps.google.de/|
end
