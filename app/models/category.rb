class Category < ActiveRecord::Base
	has_many :souls
	has_many :lairds
	has_many :wors_as
end
