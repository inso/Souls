class Soul < ActiveRecord::Base
	belongs_to :category
	validates_presence_of :name, :category_id
	validates_length_of :name, maximum: 200
	validates_numericality_of :price, greater_that_or_equal_to: 0


end
