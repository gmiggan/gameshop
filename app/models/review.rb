class Review < ActiveRecord::Base
	belongs_to :product
	belongs_to :customer
	
	validates_presence_of :product, :customer, :comment
end
