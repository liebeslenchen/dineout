class Diner < ActiveRecord::Base
  attr_accessible :city, :name, :number, :phone, :street, :time, :url, :urlmaps, :zipcode

  validates_presence_of :name, :city, :number, :street, :zipcode
  validates :urlmaps, format: %r|^http(s?)://maps.google.de/|
end
