class Customer < ActiveRecord::Base

	
	has_many :orders
	has_many :reviews
	has_secure_password
	validates_presence_of :name, :email, :address
	validates_uniqueness_of :email
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i 
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

end
