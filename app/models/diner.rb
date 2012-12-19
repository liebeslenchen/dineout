class Diner < ActiveRecord::Base
  attr_accessible :city, :name, :number, :phone, :street, :time, :url, :urlmaps, :zipcode

  belongs_to :event

  validates_presence_of :name, :city, :number, :street, :zipcode
  validates :urlmaps, format: %r|^http(s?)://maps.google.de/|
end
