class Product < ActiveRecord::Base
	has_many :orders
	has_many :reviews
	has_many :line_items
	
	before_destroy :ensure_not_referenced_by_any_line_item
	
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
		return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end

	
	def self.search(search)
	search_condition = search + "%"
	find(:all, :conditions => ['name LIKE  ?', search_condition])
	end

	validates_presence_of :name, :rating, :prodcuer, :releasedate, :price
end
