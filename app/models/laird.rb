class Laird < ActiveRecord::Base
belongs_to :category

mount_uploader :image, SoulImageUploader
end
