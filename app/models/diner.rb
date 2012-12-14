class Diner < ActiveRecord::Base
  attr_accessible :city, :name, :number, :phone, :street, :time, :url, :urlmaps, :zipcode
end
