class Diner < ActiveRecord::Base
  attr_accessible :city, :name, :number, :phone, :street, :time, :url, :urlmaps, :zipcode

  has_many :events

  validates_presence_of :name, :city, :number, :street, :zipcode
  validates :urlmaps, format: %r|^http(s?)://maps.google.de/|
end
